

#ifndef __UART_H
#define __UART_H

#include <stdint.h>
#include "main.h"

#define UART_RXBUF_SIZE     (PACKET_DATA_SIZE * 4)
#define UART_TXBUF_SIZE     (PACKET_DATA_SIZE * 4)


typedef enum {
    DATABITS_7 = USART_CR1_M1,  // PARITY BIT USES A DATA BIT so for 7E1 use 8 data bits
    DATABITS_8 = 0x0,
    DATABITS_9 = USART_CR1_M0
} uart_databits_t;

typedef enum {
    STOPBITS_1 = 0u, 
    STOPBITS_0_5 = 1u, 
    STOPBITS_2 = 2u,
    STOPBITS_1_5 = 3u 
} uart_stopbits_t;

typedef enum {
    PARITY_NONE = 0u, 
    PARITY_EVEN = 2u, 
    PARITY_ODD = 3u
} uart_parity_t;
typedef enum {
    BAUD_9600 = 9600u,
    BAUD_19200 = 19200u, 
    BAUD_115200 = 115200u
} uart_baudrate_t;                 

typedef struct{ 
    uart_baudrate_t baudrate;   
    uart_databits_t databits:2;
    uart_parity_t parity:2;
    uart_stopbits_t stopbits:2; 
    uint8_t rxie:1;        
    uint8_t txie:1;       
    uint8_t invert_rx:1; 
    uint8_t invert_tx:1;   
    uint8_t enable_rx:1;  
    uint8_t enable_tx:1;   
} uart_config_t;


typedef struct{ 
    uint8_t rxbuf[UART_RXBUF_SIZE];
    uint8_t txbuf[2][UART_TXBUF_SIZE];
    uint_fast8_t rxbuf_pos;
    uint_fast8_t rxbuf_full;
    uint_fast8_t rx_timeout;
    volatile uint_fast8_t bytesreceived;
    uint8_t *rxbuf_txfrom;
    volatile uint_fast8_t bytestosend[2];
    volatile uint_fast8_t active_txbuf;
} gpxtendo_uart_data;

extern gpxtendo_uart_data uart2;

void USART2_IRQHandler(void);
void DMA1_Channel4_5_IRQHandler(void);

void uart_init(USART_TypeDef *UART, const uart_config_t *config);
void uart2_init_rxonly(void);
void uart2_deinit(void);
void uart2_rx_callback(void);
void uart2_rxtimeout_callback(void);
void uart2_tx_dma(const uint8_t *data, uint_fast16_t length);
void uart2_init_txonly_dma(void);
void uart2_putstr_dma(const char *data);

#endif // _UART_H 
