

#ifndef __UART_H
#define __UART_H

#include <stdint.h>
#include "main.h"

#define UART_RXBUF_SIZE     (PACKET_DATA_SIZE * 4)
#define UART_TXBUF_SIZE     (PACKET_DATA_SIZE * 4)
#define UART_RX_TIMEOUT     60000   // timeout in us


typedef struct{ 
    uint8_t rxbuf[UART_RXBUF_SIZE];
    uint8_t txbuf[2][UART_TXBUF_SIZE];
    uint_fast8_t rxbuf_pos;
    uint_fast8_t rxbuf_full;
    uint_fast8_t rx_timeout;
    uint_fast8_t bytesreceived;
    uint8_t *rxbuf_txfrom;
    uint_fast8_t bytestosend[2];
    uint_fast8_t active_txbuf;
} gpxtendo_uart_data;

extern gpxtendo_uart_data uart2;

void USART2_IRQHandler(void);
void DMA1_Channel4_5_IRQHandler(void);

void uart2_init(void);
void uart2_init_rxonly(void);
void uart2_init_txonly(void);
void uart2_disable_tx(void);
void uart2_disable_rx(void);
void uart_start_rx(void);
void uart2_tx(const uint8_t *data, uint_fast16_t length);
void uart2_rx_callback(void);
void uart2_rxtimeout_callback(void);
void uart2_tx_dma(const uint8_t *data, uint_fast16_t length);
void uart2_init_txonly_dma(void);
void uart2_putstr_dma(const char *data);

#endif // _UART_H 
