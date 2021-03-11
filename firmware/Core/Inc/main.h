

#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

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
    DATA_PKT            = 0xDA
} nrf_packet_type;

typedef enum{
    UNINITIALISED,
    METER_SIDE,
    GPX_SIDE
} connection_side;

#define VERSION_STR         "0.3"

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
#define TXLOOP_TIMEOUT      10000
#define RXLOOP_TIMEOUT      (UINT16_MAX - 1)

#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)


void user_init(void);
void gpio_init(void);

void user_led_on(void);
void user_led_off(void);
void user_CE_hi(void);
void user_CE_low(void);
void user_CS_hi(void);
void user_CS_low(void);


void Error_Handler(void);

#ifdef __cplusplus
}
#endif

#endif // __MAIN_H 

