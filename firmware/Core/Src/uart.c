
#include <stdint.h>
#include <string.h>
#include "extender_config.h"
#include "uart.h"
#include "timing.h"
#include "stm32l0xx_hal.h"


void uart2_init_rxonly(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    
    __HAL_RCC_USART2_CLK_ENABLE();
  
    // RX ONLY configuration
    // PA9      ------> input, pullup enabled
    // PA10     ------> USART2_RX, also pullup enabled? -> stronger pullup for faster signal
    
    GPIO_InitStruct.Pin = GPIO_PIN_9;
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
    
    // PC15 connected to data with 2k2 resistor, acts as stronger toggleable pullup
    __HAL_RCC_GPIOC_CLK_ENABLE();
    GPIO_InitStruct.Pin = PULLUP_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(PULLUP_PORT, &GPIO_InitStruct);
    HAL_GPIO_WritePin(PULLUP_PORT, PULLUP_PIN, GPIO_PIN_SET);
    
    GPIO_InitStruct.Pin = GPIO_PIN_10;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF4_USART2;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    USART2->CR1 = 0;
    USART2->CR1 = USART_CR1_RE | USART_CR1_RXNEIE | UART_DATABITS | (UART_PARITY << USART_CR1_PS_Pos);
    uint16_t uart_div = (uint16_t)((HAL_RCC_GetPCLK1Freq() + (BAUDRATE / 2)) / BAUDRATE);
    USART2->BRR  = uart_div;
    USART2->CR2 = USART_CR2_RXINV | (UART_STOPBITS << USART_CR2_STOP_Pos);
    USART2->CR3 = 0;
    
    NVIC_SetPriority(USART2_IRQn, 0);
    NVIC_EnableIRQ(USART2_IRQn);
    
    USART2->CR1 |= USART_CR1_UE; 
}


void uart2_init_txonly_dma(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    
    __HAL_RCC_USART2_CLK_ENABLE();
    __HAL_RCC_DMA1_CLK_ENABLE();
  
    /**USART2 GPIO Configuration    
    PA9     ------>  USART1_TX
    PA10     ------> analog(high impedance) input 
    */
    
    GPIO_InitStruct.Pin = GPIO_PIN_9;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_OD;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF4_USART2;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
    
    GPIO_InitStruct.Pin = GPIO_PIN_10;
    GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
    
    USART2->CR1 = 0;
    USART2->CR1 = USART_CR1_TE | UART_DATABITS;
    uint16_t uart_div = (uint16_t)((HAL_RCC_GetPCLK1Freq() + (BAUDRATE / 2)) / BAUDRATE);
    USART2->BRR  = uart_div;
    USART2->CR2 = USART_CR2_TXINV;
    USART2->CR3 = 0;
    
    // configure DMA
    DMA1_CSELR->CSELR = (0x04U << DMA_CSELR_C4S_Pos);
    DMA1_Channel4->CCR = DMA_CCR_PL_0 | DMA_CCR_MINC | DMA_CCR_DIR | DMA_CCR_TCIE;
    
    NVIC_SetPriority(DMA1_Channel4_5_IRQn, 0);
    NVIC_EnableIRQ(DMA1_Channel4_5_IRQn);
    
    USART2->CR1 |= USART_CR1_UE; 
}

void uart2_deinit(void)
{
    USART2->CR1 = 0;
    USART2->CR2 = 0;
    USART2->CR3 = 0;
    
    call_after_us_cancel();
    NVIC_DisableIRQ(USART2_IRQn);
    __HAL_RCC_USART2_CLK_DISABLE();
}

void uart2_putstr_dma(const char *data)
{
    uart2_tx_dma((const uint8_t *)data, strlen(data));
}

void uart2_tx_dma(const uint8_t *data, uint_fast16_t length)
{
    uint8_t *txbuf = uart2.txbuf[uart2.active_txbuf];
    
    if(length > UART_TXBUF_SIZE){
        return;
    }
    while((DMA1_Channel4->CNDTR == 1) || ((uart2.bytestosend[uart2.active_txbuf] + length) > UART_TXBUF_SIZE)){
        // block while the last byte is being transmitted to avoid transfer complete IRQ interrupting this function
        // or while active buffer is full
    }
    
    memcpy(&txbuf[uart2.bytestosend[uart2.active_txbuf]], data, length);    // append data to current buffer at <bytestosend>
    uart2.bytestosend[uart2.active_txbuf] += length;                        // increase bytestosend by data size
    
    // if no transmission active
    if(DMA1_Channel4->CNDTR == 0){
        // set up DMA 
        DMA1_Channel4->CCR &= ~DMA_CCR_EN;
        DMA1->IFCR |= DMA_IFCR_CGIF4;
        DMA1_Channel4->CNDTR = uart2.bytestosend[uart2.active_txbuf];
        DMA1_Channel4->CPAR = (uint32_t)&USART2->TDR;
        DMA1_Channel4->CMAR = (uint32_t)uart2.txbuf[uart2.active_txbuf];
        DMA1_Channel4->CCR |= DMA_CCR_EN;
        
        USART2->ICR |= USART_ICR_TCCF;
        USART2->CR3 = USART_CR3_DMAT;
        
        uart2.bytestosend[uart2.active_txbuf] = 0;
        uart2.active_txbuf ^= 1;        // swap active buffers
    }
}

void DMA1_Channel4_5_IRQHandler(void)
{
    if(DMA1->ISR & DMA_ISR_TCIF4){  // transfer complete channel 4
        DMA1->IFCR |= DMA_IFCR_CTCIF4;
        USART2->CR3 = 0;
        
        if(uart2.bytestosend[uart2.active_txbuf]){
            DMA1_Channel4->CCR &= ~DMA_CCR_EN;                                  // disable channel 
            DMA1_Channel4->CMAR = (uint32_t)uart2.txbuf[uart2.active_txbuf];    // load new active buffer
            DMA1_Channel4->CNDTR = uart2.bytestosend[uart2.active_txbuf];       // load count
            DMA1_Channel4->CCR |= DMA_CCR_EN;                                   // re-enable channel
            
            USART2->ICR |= USART_ICR_TCCF;
            USART2->CR3 = USART_CR3_DMAT;
            
            uart2.bytestosend[uart2.active_txbuf] = 0;                          // clear pending tx count
            uart2.active_txbuf ^= 1;                                            // activate next buffer
        }
    }
}


void USART2_IRQHandler(void)
{
    if(USART2->ISR & USART_ISR_RXNE){
        uart2_rx_callback();
    }
}

void uart2_rx_callback(void)
{
    uart2.rxbuf[uart2.rxbuf_pos] = (uint8_t)USART2->RDR;
    
    call_after_us(UART_RX_TIMEOUT, uart2_rxtimeout_callback);
    
    uart2.rxbuf_pos++;
    if((uart2.rxbuf_pos % PACKET_DATA_SIZE) == 0){
        uart2.rxbuf_full = 1;
        uart2.rxbuf_txfrom = &uart2.rxbuf[uart2.rxbuf_pos - PACKET_DATA_SIZE]; // tx from start of this packet
        HAL_PWR_DisableSleepOnExit();
        call_after_us_cancel();
    }
    if(uart2.rxbuf_pos == UART_RXBUF_SIZE){
        uart2.rxbuf_pos = 0;
    }
}

void uart2_rxtimeout_callback(void)
{
    // we know the buffer isn't full so we can send from the last packetsize boundary to the current rxbuf position
    // reset buffer positions to 0 after a timeout so we don't have to track rx being full from different starting points
    // there could be race conditions here (eg new character arrives just as timeout happens), not much impact if it happens
    HAL_PWR_DisableSleepOnExit();
    uart2.bytesreceived = uart2.rxbuf_pos % PACKET_DATA_SIZE;
    uart2.rxbuf_txfrom = &uart2.rxbuf[uart2.rxbuf_pos - uart2.bytesreceived];
    uart2.rxbuf_pos = 0;
    uart2.rx_timeout = 1;
}
