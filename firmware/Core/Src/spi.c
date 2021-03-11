

#include "spi.h"
#include "stm32l0xx_hal.h"


void spi1_init(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    __HAL_RCC_SPI1_CLK_ENABLE();
    
    /**SPI1 GPIO Configuration
    PA5     ------> SPI1_SCK
    PA6     ------> SPI1_MISO
    PA7     ------> SPI1_MOSI
    */
    GPIO_InitStruct.Pin = GPIO_PIN_5|GPIO_PIN_6|GPIO_PIN_7;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
    GPIO_InitStruct.Alternate = GPIO_AF0_SPI1;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
    
    
    SPI1->CR1 = 0;  // disable for config
    SPI1->CR1 = SPI_CR1_BR_1 | SPI_CR1_MSTR | SPI_CR1_SSI | SPI_CR1_SSM; // bi-directional master, clk/16
    SPI1->CR2 = 0;
    SPI1->CR1 |= SPI_CR1_SPE;   // enable SPI
}

void spi1_tx(const uint8_t *data, uint16_t length)
{
    volatile uint8_t temp_ovr;
    while(length--)
    {
        while(!(SPI1->SR & SPI_SR_TXE)){    // wait for tx to be empty         
            ;            
        }
        *((__IO uint8_t*)&SPI1->DR) = *data;
        data++;
        
        while(!(SPI1->SR & SPI_SR_RXNE)){    // wait for rx data      
            ;      
        }
        temp_ovr = (volatile uint8_t)SPI1->DR;
        temp_ovr = (volatile uint8_t)SPI1->SR;
    }
    
}

void spi1_rx(uint8_t *data, uint16_t length)
{
    spi1_txrx(data, data, length);
}

void spi1_txrx(const uint8_t *txdata, uint8_t *rxdata, uint16_t length)
{
    while(length--)
    {
        while(!(SPI1->SR & SPI_SR_TXE)){    // wait for tx to be empty      
            ;      
        }
        *(__IO uint8_t *)&SPI1->DR = *txdata;
        txdata++;

        while(!(SPI1->SR & SPI_SR_RXNE)){    // wait for rx data      
            ;      
        }
        (*(uint8_t *)rxdata) = (uint8_t)SPI1->DR;
        rxdata++;
    }
}

