

#ifndef __MAIN_H
#define __MAIN_H


#include "stm32l0xx_hal.h"

typedef enum{
    NRF_SUCCESS,
    NRF_FAIL,
    NRF_TIMEOUT,
    NRF_NORESPONSE
} nrf_status;

typedef enum{
    ANNOUNCE            = 0xAE,
    ANNOUNCE_RESPONSE   = 0xAC,
    DATA_PKT            = 0xDA,
    PAIR_TX             = 0x7E,
    PAIR_RX             = 0xCE,
    KEEPALIVE_PKT       = 0xF5
} nrf_packet_type;

typedef enum{
    UNINITIALISED,
    METER_SIDE,
    GPX_SIDE
} connection_side;


#define VERSION_STR         "0.6"

// additional NRF pins
#define CS_PORT             GPIOA
#define CS_PIN              GPIO_PIN_3
#define CE_PORT             GPIOB
#define CE_PIN              GPIO_PIN_1
#define IRQ_PORT            GPIOA
#define IRQ_PIN             GPIO_PIN_4
// gpio pins
#define LED1_PORT           GPIOA
#define LED1_PIN            GPIO_PIN_1
#define LED2_PORT           GPIOA
#define LED2_PIN            GPIO_PIN_2
#define BTN_PORT            GPIOA
#define BTN_PIN             GPIO_PIN_0


#define RAW_PACKET_SIZE     32
#define PACKET_DATA_SIZE    30
#define TXLOOP_TIMEOUT      30000
#define RXLOOP_TIMEOUT      (UINT16_MAX - 1)
#define TX_MAX_WAITTIME     200000
#define BTN_PRESS_DURATION      300     // time to hold button in 10ms increments
#define BTN_RELEASE_DURATION    11      // for debounce only count button as released after some time
#define PAIRING_TIMEOUT         30000   // ms timeout for pairing
#define KEEPALIVE_TIMEOUT       1000    // send keepalive packet if no RF data has been sent for this amount of time(ms)

#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)


void user_init(void);
void gpio_init(void);

void red_led_on(void);
void red_led_off(void);
void green_led_on(void);
void green_led_off(void);
void user_CE_hi(void);
void user_CE_low(void);
void user_CS_hi(void);
void user_CS_low(void);


void Error_Handler(void);


#endif // __MAIN_H 

