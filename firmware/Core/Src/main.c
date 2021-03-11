/* 
    GPX extender prototype based on STM32L011F4
    
    ****************INVERTED UART TEST VERSION****************
    
    Pin configuration:

    PA0     ------> BTN
    PA1     ------> LED1 (red)
    PA2     ------> LED2 (green)
    PA3     ------> CS
    PA4     ------> IRQ
    PA5     ------> SPI1_SCK
    PA6     ------> SPI1_MISO
    PA7     ------> SPI1_MOSI 
    PB1     ------> CE
    PA9     ------> UART2_TX
    PA10    ------> UART2_RX
    PA13    ------> SWDIO
    PA14    ------> SWCLK

    peripheral overview:
    
    TIM2
        1µs ticks, IRQ on update, used for delay_us and delay_ms
    TIM12
        1µs ticks, IRQ on update, used for call_after_us 
    UART2
        115200 8N1 only one direction is initialised, RX interrupt based, TX uses DMA channel 4, both pins inverted
    SPI
        4MHz full duplex master, for communication with NRF24L01
        
    TODO:   
        make LED blink more clearly indicate status
        use nonvolatile memory to save paired address
        remove remaining HAL functions (used for GPIO and sysclk)
*/


#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include "main.h"
#include "uart.h"
#include "spi.h"
#include "timing.h"
#include "gpxtendo_nrf.h"
#include "nrf24l01.h"

void SystemClock_Config(void);

void TIM2_IRQHandler(void);
void TIM21_IRQHandler(void);
void EXTI0_1_IRQHandler(void);
void EXTI4_15_IRQHandler(void);

static void gpxtendo_connectloop(uint8_t *addr);
static void gpxtendo_txloop(uint8_t *addr);
static void gpxtendo_rxloop(uint8_t *addr);
static void get_device_uid(uint32_t * uid);
static void set_device_addr(uint32_t * uid);
static connection_side detect_conn_side(void);

// globals
void (*delayed_callback)(void);
uint8_t device_addr[5] __attribute__((aligned (2))) = {0};
volatile uint_fast8_t nrf_irq_flag = 0, tim2_flag = 0, button_flag = 0;
connection_side side = UNINITIALISED;
gpxtendo_uart_data uart2 = {0};

int main(void)
{
    uint8_t addr[ADDR_WIDTH];
    uint32_t chip_uid[4] = {0};
    
    HAL_Init();
    // Configure the system clock 
    SystemClock_Config();
    // disable systick (this breaks the HAL but we're not using that beyond this point)
    SysTick->CTRL &= ~(SysTick_CTRL_ENABLE_Msk | SysTick_CTRL_TICKINT_Msk);
    
    gpio_init();
    tim21_init();
    tim2_init();
    spi1_init(); 
    
    // NRF24L01 startup delay
    delay_ms(80);     
    
    get_device_uid(chip_uid);
    set_device_addr(chip_uid);
    side = detect_conn_side();
    
    if(side == GPX_SIDE){   // for meter side initialise uart later
        uart2_init_txonly_dma();
        
        uart2_putstr_dma("\nGPX extender prototype v" VERSION_STR "\n");
        uart2_putstr_dma("built on " __DATE__ " " __TIME__ "\n");
        printf("chip UID: %08x %08x %08x\n", chip_uid[0], chip_uid[1], chip_uid[2]);
        printf("device address: %02x %02x %02x %02x %02x\n\n", device_addr[0], device_addr[1], device_addr[2], device_addr[3], device_addr[4]);
        uart2_putstr_dma("starting as rx side\n");
    }
    nrf_init(device_addr);
    
    // loop until connection established
    gpxtendo_connectloop(addr); 
    
    if(side == METER_SIDE){
        uart2_init_rxonly();        // start receiving after NRF is initialised or meter side
        gpxtendo_txloop(addr);
    }
    else{
        printf("connection established with: %x\n", addr[0]);
        gpxtendo_rxloop(addr);
    }
}

static void get_device_uid(uint32_t * uid)
{
    uid[0] = *((uint32_t *)UID_BASE);
    uid[1] = *((uint32_t *)(UID_BASE + 0x04U));
    uid[2] = *((uint32_t *)(UID_BASE + 0x14U));
}

static void set_device_addr(uint32_t * uid)
{
    device_addr[0] = uid[0] >> 24;
    
    uint32_t temp = __REV(uid[2]);
    memcpy(&device_addr[1], &temp, 4);
}

static connection_side detect_conn_side()
{
    // PA9      ------> USART2_TX
    // PA10     ------> USART2_RX
    
    // input with one pulldown
    GPIOA->PUPDR &= ~(GPIO_PUPDR_PUPD9 | GPIO_PUPDR_PUPD10);
    GPIOA->PUPDR |= GPIO_PUPDR_PUPD9_1;
    GPIOA->MODER &= ~(GPIO_MODER_MODE9 | GPIO_MODER_MODE10);
    
    delay_ms(1);   // don't read directly after changing pin setting
    
    if(HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_10)){//GPIOA->IDR & GPIO_IDR_ID10){
        HAL_GPIO_WritePin(LED2_PORT, LED2_PIN, GPIO_PIN_RESET);
        return GPX_SIDE;    // pullup present means we're connected to the GPX
    }
    else{
        return METER_SIDE;  
    }
}

static void gpxtendo_connectloop(uint8_t *addr)
{
    uint8_t pipe, pwidth, rxdata[RAW_PACKET_SIZE];
    nrf_status result = NRF_FAIL;
    uint16_t timeout;
    uint8_t i = 0;
    
    while(result != NRF_SUCCESS){
        rxdata[0] = 0;
        if(i++ >= 5){
            i = 0;
            user_led_on();
            delay_ms(1);
            user_led_off();
        }
        if(nrf_announce() == NRF_SUCCESS){
            result = nrf_get_announce_response(addr);
            if((result == NRF_SUCCESS) && (side == GPX_SIDE)){
                printf("got announce response from: %x\n", addr[0]);
            }
        }
        else{
            timeout = 65000;
            result = nrf_receive(rxdata, &pwidth, &pipe, &timeout);
            if((result == NRF_SUCCESS) && (rxdata[0] == ANNOUNCE)){
                result = nrf_send_announce_response(&rxdata[1]);
                memcpy(addr, &rxdata[1], ADDR_WIDTH);
                if((result == NRF_SUCCESS) && (side == GPX_SIDE)){
                    printf("sent announce response to: %x\n", addr[0]);
                }
            }
            else{
                result = NRF_FAIL;
            }
        }
    }
}

_Noreturn static void gpxtendo_txloop(uint8_t *addr)
{
    uint8_t txdata[RAW_PACKET_SIZE];
    nrf_status result;
    uint16_t timeout = TXLOOP_TIMEOUT;
    
    
    while(1){
        HAL_PWR_EnableSleepOnExit();
        HAL_PWR_EnterSLEEPMode(PWR_LOWPOWERREGULATOR_ON, PWR_SLEEPENTRY_WFI);
        
        if(uart2.rxbuf_full){
            uart2.rxbuf_full = 0;
            txdata[0] = DATA_PKT;
            txdata[1] = 0xbb;
            memcpy(&txdata[2], uart2.rxbuf_txfrom, PACKET_DATA_SIZE);    // copy data to packet buffer
            user_led_on();
            result = NRF_FAIL;
            while(result != NRF_SUCCESS){
                result = nrf_send(addr, txdata, RAW_PACKET_SIZE, timeout);
            }
            user_led_off();
        }
        if(uart2.rx_timeout){
            uart2.rx_timeout = 0;
            txdata[0] = DATA_PKT;
            txdata[1] = 0xbb;
            memcpy(&txdata[2], uart2.rxbuf_txfrom, uart2.bytesreceived); 
            user_led_on();
            result = NRF_FAIL;
            while(result != NRF_SUCCESS){
                result = nrf_send(addr, txdata, (uint8_t)(uart2.bytesreceived + 2), timeout);
            }
            user_led_off();
        }
    }
}

_Noreturn static void gpxtendo_rxloop(uint8_t *addr)
{
    (void)addr;
    nrf_status result = NRF_FAIL;
    uint8_t pipe, pwidth, rxdata[33];
    uint16_t timeout;
    
    
    while(1){
        timeout = RXLOOP_TIMEOUT;
        result = nrf_receive(rxdata, &pwidth, &pipe, &timeout);
        if(result == NRF_SUCCESS){
            if(rxdata[0] == DATA_PKT){
                user_led_on();
                uart2_tx_dma(&rxdata[2], pwidth - 2);
                user_led_off();
            }
        }
    }
}



void SystemClock_Config(void)
{
    RCC_OscInitTypeDef RCC_OscInitStruct = {0};
    RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

    /** Configure the main internal regulator output voltage
    */
    __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
    /** Initializes the RCC Oscillators according to the specified parameters
    * in the RCC_OscInitTypeDef structure.
    */
    RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
    RCC_OscInitStruct.HSIState = RCC_HSI_ON;
    RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
    RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
    RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
    RCC_OscInitStruct.PLL.PLLMUL = RCC_PLLMUL_4;
    RCC_OscInitStruct.PLL.PLLDIV = RCC_PLLDIV_2;
    if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
    {
        Error_Handler();
    }
    /** Initializes the CPU, AHB and APB buses clocks
    */
    RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
    |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
    RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
    RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
    RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
    RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

    if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
    {
        Error_Handler();
    }
}

// THIS IS A RESET BUTTON NOW
void EXTI0_1_IRQHandler(void)
{
    if(EXTI->PR & BTN_PIN){
        EXTI->PR |= BTN_PIN;
        button_flag = 1;
        HAL_NVIC_SystemReset();
    }
}

void EXTI4_15_IRQHandler(void)
{
    if(EXTI->PR & IRQ_PIN){
        EXTI->PR |= IRQ_PIN;
        nrf_irq_flag = 1;
    }
}

void TIM2_IRQHandler()
{
    TIM2->SR = 0;
    tim2_flag = 1;
}

void TIM21_IRQHandler()
{
    if(TIM21->SR & TIM_SR_UIF){
        TIM21->SR = 0;
        TIM21->DIER &= ~TIM_DIER_UIE; 
        TIM21->CR1 &= ~TIM_CR1_CEN;      // stop counter
        delayed_callback();
    }
}



void gpio_init()
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    // unused pins: PC14, PC15, leave in reset state, portc clock disabled
    __HAL_RCC_GPIOA_CLK_ENABLE();
    __HAL_RCC_GPIOB_CLK_ENABLE();

    // IRQ: interrupt
    GPIO_InitStruct.Pin = IRQ_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    HAL_GPIO_Init(IRQ_PORT, &GPIO_InitStruct);

    // CS: output
    GPIO_InitStruct.Pin = CS_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(CS_PORT, &GPIO_InitStruct);
    
    // CE: output
    GPIO_InitStruct.Pin = CE_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(CE_PORT, &GPIO_InitStruct);


    // LEDs
    GPIO_InitStruct.Pin = LED1_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(LED1_PORT, &GPIO_InitStruct);
    
    GPIO_InitStruct.Pin = LED2_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(LED2_PORT, &GPIO_InitStruct);

    // button
    GPIO_InitStruct.Pin = BTN_PIN;
    GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(BTN_PORT, &GPIO_InitStruct);
    
    
    // initial pin states
    HAL_GPIO_WritePin(CE_PORT, CE_PIN, GPIO_PIN_RESET);
    HAL_GPIO_WritePin(CS_PORT, CS_PIN, GPIO_PIN_RESET);
    HAL_GPIO_WritePin(LED1_PORT, LED1_PIN, GPIO_PIN_SET);
    HAL_GPIO_WritePin(LED2_PORT, LED2_PIN, GPIO_PIN_SET);
    
    // enable interrupts for IRQ and button
    HAL_NVIC_SetPriority(EXTI4_15_IRQn, 2, 0);
    HAL_NVIC_EnableIRQ(EXTI4_15_IRQn);
    HAL_NVIC_SetPriority(EXTI0_1_IRQn, 2, 0);
    HAL_NVIC_EnableIRQ(EXTI0_1_IRQn);
}

void user_led_on()
{
    HAL_GPIO_WritePin(LED1_PORT, LED1_PIN, GPIO_PIN_RESET);
}
void user_led_off()
{
    HAL_GPIO_WritePin(LED1_PORT, LED1_PIN, GPIO_PIN_SET);
}
void user_CE_hi()
{
    HAL_GPIO_WritePin(CE_PORT, CE_PIN, GPIO_PIN_SET);
}
void user_CE_low()
{
    HAL_GPIO_WritePin(CE_PORT, CE_PIN, GPIO_PIN_RESET);
}
void user_CS_hi()
{
    HAL_GPIO_WritePin(CS_PORT, CS_PIN, GPIO_PIN_SET);
}
void user_CS_low()
{
    HAL_GPIO_WritePin(CS_PORT, CS_PIN, GPIO_PIN_RESET);
}


/**
  * @brief  Retargets the C library printf function to the USART.
  * @param  None
  * @retval None
  */
PUTCHAR_PROTOTYPE
{
    /* Place your implementation of fputc here */
    (void)f;
    //uart2_tx((uint8_t *)&ch, 1);
    uart2_tx_dma((uint8_t *)&ch, 1);
    return ch;
}

void Error_Handler(void)
{
    __disable_irq();
    while (1){
    }
}

#ifdef  USE_FULL_ASSERT

void assert_failed(uint8_t *file, uint32_t line)
{
    /* USER CODE BEGIN 6 */
    /* User can add his own implementation to report the file name and line number,
    ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
    /* USER CODE END 6 */
}
#endif 