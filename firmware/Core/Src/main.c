/* 
    GPX extender prototype based on STM32L011F4
        - detects connection to either GPX connector or P1 port
        - transmits P1 port data to paired extender via NRF24L01+ module
    
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
    PA9     ------> UART2_TX, inverted, pullup enabled (if connected to gpxconn, else gpio input with pullup)
    PA10    ------> UART2_RX, OD, inverted (if connected to P1 port, else analog input)
    PA13    ------> SWDIO
    PA14    ------> SWCLK
    PC15    ------> driven high to function as strong pullup if connected to P1 port (2K ohms to UART2_RX)

    peripheral overview:
    
    Systick
        used for LED blinking and keepalive timeout
    LPTIM1
        used for long button press timing, IRQ every 10ms
    TIM2
        1µs clock, IRQ on update, used for delay_us and delay_ms
    TIM12
        1µs clock, IRQ on update, used for call_after_us 
    UART2
        baudrate and stop/databits set in extender_config.h 
        only one direction is initialised, RX interrupt based, TX uses DMA channel 4
    SPI
        8MHz full duplex master, for communication with NRF24L01
    
    TODO:   
        replace remaining HAL usage:
            SystemClock_Config
            LPM functions and macros
            GPIO_init
            RCC macros
*/

#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include "main.h"
#include "extender_config.h"
#include "uart.h"
#include "spi.h"
#include "timing.h"
#include "gpxtend_nrf.h"
#include "crc.h"
#include "gpio.h"

void SystemClock_Config(void);

void EXTI0_1_IRQHandler(void);
void EXTI4_15_IRQHandler(void);
void TIM2_IRQHandler(void);
void TIM21_IRQHandler(void);
void LPTIM1_IRQHandler(void);
void SysTick_Handler(void);

// static functions
static void unpaired_loop(void);
static nrf_status pair_loop(void);
static void tx_loop(uint8_t *addr);
static void rx_loop(uint8_t *addr);
static void get_device_uid(uint32_t * uid);
static void set_device_addr(uint32_t * uid);
static void write_opposite_addr(uint8_t *addr);
static uint8_t read_opposite_addr(uint8_t *addr);
static connection_side detect_conn_side(void);

static void blink(led_colour_t colour, uint_fast16_t duration);
static void pair_success_blink(void);

// globals
void (*delayed_callback)(void);
uint8_t device_addr[5] __attribute__((aligned (2))) = {0};
volatile uint_fast8_t nrf_irq_flag = 0, tim2_flag = 0, btn_timer_active = 0;
static volatile uint_fast8_t pair_btn = 0;
static volatile uint_fast16_t red_ontime = 0, green_ontime = 0, ms_since_last_tx = 0, pressed_time = 0, released_time = 0;
connection_side side = UNINITIALISED;
gpxtendo_uart_data uart2 = {0};

int main(void)
{
    uint8_t opposite_addr[ADDR_WIDTH] = {0};
    uint_fast8_t saved_addr_valid = 0;
    uint32_t chip_uid[4] = {0};
    
    HAL_Init();
    SystemClock_Config();
    
    gpio_init();
    tim21_init();
    tim2_init();
    lptim1_init();
    spi1_init();
    crc_init();  
    
    
    side = detect_conn_side();
    get_device_uid(chip_uid);
    set_device_addr(chip_uid);
    saved_addr_valid = read_opposite_addr(opposite_addr);
    
    if(side == GPX_SIDE){   // only initialise UART for tx when connected to GPX
        uart2_init_txonly_dma();
        
        #ifdef DEBUGPRINT
        uart2_putstr_dma("\nGPX extender prototype v" VERSION_STR "\n");
        uart2_putstr_dma("built on " __DATE__ " " __TIME__ "\n");
        printf("chip UID: %08x %08x %08x\n", chip_uid[0], chip_uid[1], chip_uid[2]);
        printf("device address: %02x %02x %02x %02x %02x (crc=%02x)\n", device_addr[0], device_addr[1], device_addr[2], device_addr[3], device_addr[4], calc_crc(device_addr, ADDR_WIDTH));
        printf("paired address: %02x %02x %02x %02x %02x\n\n", opposite_addr[0], opposite_addr[1], opposite_addr[2], opposite_addr[3], opposite_addr[4]);
        
        uart2_putstr_dma("radio rx --> serial tx\n");
        #endif //DEBUGPRINT
    }
    
    // NRF24L01 startup delay
    delay_ms(80);   
    if(saved_addr_valid){
        nrf_init(device_addr, opposite_addr);
    }
    else{
        nrf_init(device_addr, ANNOUNCE_ADDR);
    }
    
    
    while(1){
        if(!saved_addr_valid){
            unpaired_loop();
        }
        else{
            if(side == METER_SIDE){
                tx_loop(opposite_addr);
            }
            else{
                rx_loop(opposite_addr);
            }
        }
        if(pair_btn){
            pair_btn = 0;
            if(pair_loop() == NRF_SUCCESS){
                saved_addr_valid = read_opposite_addr(opposite_addr);
            }
        }
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
    device_addr[0] = uid[0] >> 24;      // first byte of address is wafer number 
    
    uint32_t temp = __REV(uid[2]);      // reverse byte order of unique ID bits
    memcpy(&device_addr[1], &temp, 4);  
}

static connection_side detect_conn_side()
{
    // PA9      ------> USART2_TX
    // PA10     ------> USART2_RX
    
    // set both pins to input with pulldown on PA9
    GPIOA->PUPDR &= ~(GPIO_PUPDR_PUPD9 | GPIO_PUPDR_PUPD10);
    GPIOA->PUPDR |= GPIO_PUPDR_PUPD9_1;
    GPIOA->MODER &= ~(GPIO_MODER_MODE9 | GPIO_MODER_MODE10);
    
    delay_ms(1);   // don't read directly after changing pin setting
    
    if(gpio_read(GPIOA, GPIO_PIN_10)){
        return GPX_SIDE;    // external pullup present means we're connected to the GPX connector
    }
    else{
        return METER_SIDE;  
    }
}

// idle loop with blinking to indicate unpaired state
static void unpaired_loop(void)
{
    red_led_off();
    green_led_off();
    
    while(!pair_btn){
        blink(UNPAIRED_BLINK_COLOUR, UNPAIRED_BLINK_ONTIME);
        delay_ms(UNPAIRED_BLINK_OFFTIME);
    }
    red_ontime = 0;
    red_led_off();
}

// pair with another module and save address
static nrf_status pair_loop(void)
{
    uint8_t addr[ADDR_WIDTH] = {0};
    uint8_t pipe, pwidth, rxdata[RAW_PACKET_SIZE];
    nrf_status result = NRF_FAIL;
    uint16_t timeout = 1;
    uint32_t timeout_ms = 0;
    uint8_t i = 0;
    
    nrf24_set_txaddr_aa(ANNOUNCE_ADDR);
    
    while(result != NRF_SUCCESS){
        rxdata[0] = 0;
        if(i++ >= 5){
            i = 0;
            blink(PAIRING_BLINK_COLOUR, PAIRING_BLINK_ONTIME);
        }
        if(nrf_pair(side) == NRF_SUCCESS){
            result = nrf_get_announce_response(addr);
            if((result == NRF_SUCCESS) && (side == GPX_SIDE)){
                #ifdef DEBUGPRINT
                printf("got announce response from: %x\n", addr[0]);
                #endif
            }
        }
        else{
            timeout_ms += timeout / 1000;
            timeout = 65000;
            if(nrf_receive(rxdata, &pwidth, &pipe, &timeout) == NRF_SUCCESS){
                
                if(((side == METER_SIDE) && (rxdata[0] == PAIR_RX)) ||
                   ((side == GPX_SIDE)   && (rxdata[0] == PAIR_TX))){
                       
                    result = nrf_send_announce_response(&rxdata[1]);
                    if(result == NRF_SUCCESS){
                        memcpy(addr, &rxdata[1], ADDR_WIDTH);
                        if(side == GPX_SIDE){
                            #ifdef DEBUGPRINT
                            printf("sent announce response to: %x\n", addr[0]);
                            #endif
                        }
                    }
                }
            }
            else{
                result = NRF_FAIL;
            }
        }
        if(timeout_ms >= PAIRING_TIMEOUT){
            return NRF_TIMEOUT;
        }
    }
    write_opposite_addr(addr);
    nrf24_set_txaddr_aa(addr);  // set tx and rx p0 address to no longer respond to announce
    pair_success_blink();
    return NRF_SUCCESS;
}

// uart RX --> RF TX loop
// wake a short time after receiving data (rxtimeout) or when buffer is full
// transmit RF packet, blink green if ACK received, red if not
// if no uart data for > KEEPALIVE_TIMEOUT, send keepalive packet
static void tx_loop(uint8_t *addr)
{
    uint8_t txdata[RAW_PACKET_SIZE] = {0};
    nrf_status result = NRF_FAIL;
    uint16_t timeout = TXLOOP_TIMEOUT;
    uint32_t cum_timeout = 0;
    
    uart2_init_rxonly();  
    
    while(!pair_btn){
        HAL_PWR_EnableSleepOnExit();
        HAL_PWR_EnterSLEEPMode(PWR_LOWPOWERREGULATOR_ON, PWR_SLEEPENTRY_WFI);
        
        // rxbuf_full and rx_timeout need to be checked sequentially incase new data arrived while in radio tx
        if(uart2.rxbuf_full){
            uart2.rxbuf_full = 0;
            txdata[0] = DATA_PKT;
            txdata[1] = 0xbb;
            memcpy(&txdata[2], uart2.rxbuf_txfrom, PACKET_DATA_SIZE);    
            
            result = NRF_FAIL;
            while((result != NRF_SUCCESS) && (cum_timeout < TX_MAX_WAITTIME)){
                timeout = TXLOOP_TIMEOUT;
                result = nrf_send(addr, txdata, RAW_PACKET_SIZE, &timeout);
                cum_timeout += timeout;
            }
            cum_timeout = 0;
            if(result == NRF_SUCCESS){
                ms_since_last_tx = 0;
                blink(TX_SUCCESS_COLOUR, TX_SUCCESS_ONTIME);
            }
            else{
                blink(TX_FAIL_COLOUR, TX_FAIL_ONTIME);
            }
        }
        if(uart2.rx_timeout){
            uart2.rx_timeout = 0;
            txdata[0] = DATA_PKT;
            txdata[1] = 0xbb;
            memcpy(&txdata[2], uart2.rxbuf_txfrom, uart2.bytesreceived); 
            
            result = NRF_FAIL;
            while((result != NRF_SUCCESS) && (cum_timeout < TX_MAX_WAITTIME)){
                timeout = TXLOOP_TIMEOUT;
                result = nrf_send(addr, txdata, (uint8_t)(uart2.bytesreceived + 2), &timeout);
                cum_timeout += timeout;
            }
            cum_timeout = 0;
            if(result == NRF_SUCCESS){
                ms_since_last_tx = 0;
                blink(TX_SUCCESS_COLOUR, TX_SUCCESS_ONTIME);
            }
            else{
                blink(TX_FAIL_COLOUR, TX_FAIL_ONTIME);
            }
        }
        if(ms_since_last_tx > KEEPALIVE_TIMEOUT){
            if(nrf_send_keepalive_packet(addr) == NRF_SUCCESS){
                if(nrf_get_keepalive_response(addr) == NRF_SUCCESS){    
                    blink(TX_SUCCESS_COLOUR, TX_SUCCESS_ONTIME);
                }
                else{
                    blink(TX_FAIL_COLOUR, TX_FAIL_ONTIME);
                }
            }
            else{
                blink(TX_FAIL_COLOUR, TX_FAIL_ONTIME);
            }
            ms_since_last_tx = 0;
        }
    } 
    uart2_deinit();  
}

// RF RX --> uart TX loop
// on receiving data packet, transmit data over uart via DMA
// blink green on any valid packet, blink red after no packet for >KEEPALIVE TIMEOUT
static void rx_loop(uint8_t *addr)
{
    nrf_status result = NRF_FAIL;
    uint8_t pipe, pwidth, rxdata[RAW_PACKET_SIZE];
    uint16_t timeout;
    uint32_t ms_since_last_rx = 0;
    
    
    while(!pair_btn){
        timeout = RXLOOP_TIMEOUT;
        result = nrf_receive(rxdata, &pwidth, &pipe, &timeout);
        ms_since_last_rx += timeout >> 10;  // not exactly ms but close enough
        if(result == NRF_SUCCESS){
            if(rxdata[0] == DATA_PKT){
                uart2_tx_dma(&rxdata[2], pwidth - 2);
                ms_since_last_rx = 0;
                blink(RX_SUCCESS_COLOUR, RX_SUCCESS_ONTIME);
            }
            if(rxdata[0] == KEEPALIVE_PKT){
                nrf_send_keepalive_packet(addr);
                ms_since_last_rx = 0;
                blink(RX_SUCCESS_COLOUR, RX_SUCCESS_ONTIME);
            }
        }
        if(ms_since_last_rx > KEEPALIVE_TIMEOUT){
                blink(RX_FAIL_COLOUR, RX_FAIL_ONTIME);
                ms_since_last_rx = 0;
        }
    }
}

static void write_opposite_addr(uint8_t *addr)
{
    uint32_t word[2];
    uint8_t crc = calc_crc(addr, ADDR_WIDTH);
    word[0] = (uint32_t)(addr[0] | (addr[1] << 8) | (addr[2] << 16) | (addr[3] << 24));
    word[1] = (uint32_t)(addr[4] | (crc << 8));
    
    while(FLASH->SR & FLASH_SR_BSY){    // wait until flash not busy
        ;
    }
    FLASH->PEKEYR = FLASH_PEKEY1;       // unlock flash program/erase by writing to unlock keys
    FLASH->PEKEYR = FLASH_PEKEY2;
    
    *(__IO uint32_t *)DATA_EEPROM_BASE = word[0];   // write word
    
    while(FLASH->SR & FLASH_SR_BSY){    // wait for write to complete
        ;
    }
    *(__IO uint32_t *)(DATA_EEPROM_BASE + 4) = word[1];
    
    while(FLASH->SR & FLASH_SR_BSY){    
        ;
    }
    FLASH->PECR |= FLASH_PECR_PELOCK;   // lock flash
}

static uint8_t read_opposite_addr(uint8_t *addr)
{
    uint32_t word[2];
    uint8_t crc = 0;
    
    word[0] = *((uint32_t *)DATA_EEPROM_BASE);
    word[1] = *((uint32_t *)(DATA_EEPROM_BASE + 4));
    
    addr[0] = word[0] & 0xff;
    addr[1] = (word[0] >> 8) & 0xff;
    addr[2] = (word[0] >> 16)  & 0xff;
    addr[3] = (word[0] >> 24)  & 0xff;
    addr[4] = word[1] & 0xff;
    crc = (word[1] >> 8) & 0xff;
    
    if(calc_crc(addr, ADDR_WIDTH) == crc){
        return 1;
    }
    else{
        return 0;
    }
}

void blink(led_colour_t colour, uint_fast16_t duration)
{
    switch(colour)
    {
    case RED:{
        red_led_on();
        red_ontime = duration;
        break;
    }
    case GREEN:{
        green_led_on();
        green_ontime = duration;
        break;

    }
    case YELLOW:{
        red_led_on();
        green_led_on();
        red_ontime = duration;
        green_ontime = duration;
        break;
    }
    }
}

void pair_success_blink()
{
    red_led_off();
    green_led_off();
    delay_ms(200);
    
    if(side == GPX_SIDE){
        red_led_on();
        delay_ms(500);
        red_led_off();
        delay_ms(500);
        red_led_on();
        green_led_on();
        delay_ms(500);
        red_led_off();
        green_led_off();
        delay_ms(500);
        red_led_on();
        green_led_on();
        delay_ms(500);
        red_led_off();
        green_led_off();
        delay_ms(500);
        green_led_on();
        delay_ms(1000);
        green_led_off();
    }
    else{
        green_led_on();
        delay_ms(500);
        green_led_off();
        delay_ms(500);
        red_led_on();
        green_led_on();
        delay_ms(500);
        red_led_off();
        green_led_off();
        delay_ms(500);
        red_led_on();
        green_led_on();
        delay_ms(500);
        red_led_off();
        green_led_off();
        delay_ms(500);
        green_led_on();
        delay_ms(1000);
        green_led_off();
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

void gpio_init()
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    // unused pins: PC14, leave in reset state, portc clock disabled
    __HAL_RCC_GPIOA_CLK_ENABLE();
    __HAL_RCC_GPIOB_CLK_ENABLE();
    __HAL_RCC_GPIOC_CLK_ENABLE();

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
    user_CE_low();
    user_CS_low();
    red_led_off();
    green_led_off();
    
    // enable interrupts for IRQ and button
    HAL_NVIC_SetPriority(EXTI4_15_IRQn, 2, 0);
    HAL_NVIC_EnableIRQ(EXTI4_15_IRQn);
    HAL_NVIC_SetPriority(EXTI0_1_IRQn, 2, 0);
    HAL_NVIC_EnableIRQ(EXTI0_1_IRQn);
}

void red_led_on()
{
    LED2_PORT->BRR = LED2_PIN;
}
void red_led_off()
{
    LED2_PORT->BSRR = LED2_PIN;
}
void green_led_on()
{
    LED1_PORT->BRR = LED1_PIN;
}
void green_led_off()
{
    LED1_PORT->BSRR = LED1_PIN;
}
void user_CE_hi()
{
    CE_PORT->BSRR = CE_PIN;
}
void user_CE_low()
{
    CE_PORT->BRR = CE_PIN;
}
void user_CS_hi()
{
    CS_PORT->BSRR = CS_PIN;
}
void user_CS_low()
{
    CS_PORT->BRR = CS_PIN;
}

void EXTI0_1_IRQHandler(void)
{
    if(EXTI->PR & BTN_PIN){
        EXTI->PR |= BTN_PIN;
        if(!btn_timer_active){    // ignore if timer is already started, probably bounce
            start_btn_timer();
        }
    }
}

void EXTI4_15_IRQHandler(void)
{
    if(EXTI->PR & IRQ_PIN){
        EXTI->PR |= IRQ_PIN;
        nrf_irq_flag = 1;
        HAL_PWR_DisableSleepOnExit();
    }
}

void TIM2_IRQHandler()
{
    if(TIM2->SR & TIM_SR_UIF){
        TIM2->SR = 0;
        tim2_flag = 1;
        HAL_PWR_DisableSleepOnExit();
    }
}

void TIM21_IRQHandler()
{
    if(TIM21->SR & TIM_SR_UIF){
        TIM21->SR = 0;
        TIM21->DIER &= ~TIM_DIER_UIE;
        TIM21->CR1 &= ~TIM_CR1_CEN;
        delayed_callback();
    }
}

void LPTIM1_IRQHandler()
{
    if(LPTIM1->ISR & LPTIM_ISR_ARRM){
        LPTIM1->ICR |= LPTIM_ICR_ARRMCF;    // this timer has a seperate interrupt clear register
        
        if(gpio_read(BTN_PORT, BTN_PIN)){   // note button is pulldown so 0 = pressed
            released_time++;
        }
        else{
            pressed_time++;
        }
        if(pressed_time >= BTN_PRESS_DURATION){
            stop_btn_timer();
            pressed_time = 0;
            released_time = 0;
            pair_btn = 1;
            HAL_PWR_DisableSleepOnExit();
        }
        if(released_time >= BTN_RELEASE_DURATION){
            stop_btn_timer();
            pressed_time = 0;
            released_time = 0;
        }
    }
}

void SysTick_Handler(void)
{
    HAL_IncTick(); 
    
    if(red_ontime){
        red_ontime--;
        if(red_ontime == 0){
            red_led_off();
        }
    }
    if(green_ontime){
        green_ontime--;
        if(green_ontime == 0){
            green_led_off();
        }
    }
    ms_since_last_tx++;
    if(ms_since_last_tx > KEEPALIVE_TIMEOUT){
            HAL_PWR_DisableSleepOnExit();
    }
}


// retargets the C library printf function to the USART
PUTCHAR_PROTOTYPE
{
    (void)f;
    
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