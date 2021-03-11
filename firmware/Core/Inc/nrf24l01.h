// nrf24l01.h

#ifndef NRF24L01_H
#define NRF24L01_H

#include "stdint.h"

typedef struct{
    void (*tx)(const uint8_t *, uint16_t);
    void (*rx)(uint8_t *, uint16_t);
    void (*txrx)(const uint8_t *, uint8_t *, uint16_t);
    void (*CS_HIGH)(void);
    void (*CS_LOW)(void);
    void (*CE_HIGH)(void);
    void (*CE_LOW)(void);
} nrf24_spi_interface;

typedef struct{
    uint8_t config_reg;     
    uint8_t autoack_enable;
    uint8_t rx_addr;
    uint8_t retransmit;
    uint8_t rf_channel;
    uint8_t rf_setup;
    uint8_t dynamic_payload;
    uint8_t feature;
    uint8_t rx_width_p0;
    uint8_t rx_width_p1;
    uint8_t rx_width_p2;
    uint8_t rx_width_p3;
    uint8_t rx_width_p4;
    uint8_t rx_width_p5;
} nrf24l01_config;

extern const nrf24_spi_interface spi;

void nrf24_init(const nrf24l01_config *config);
uint8_t nrf24_status(void);
void nrf24_pwr_down(void);
void nrf24_ce_high(void);
void nrf24_ce_low(void);

void nrf24_set_txaddr(const uint8_t *addr);
void nrf24_set_rxaddr(const uint8_t *addr, uint8_t pipe);
void nrf24_read_rxaddr(uint8_t *addr, uint8_t pipe);
void nrf24_disable_pipe(uint8_t pipe);
void nrf24_enable_pipe(uint8_t pipe);
void nrf24_flush_tx(void);
void nrf24_flush_rx(void);

void nrf24_listen(void);
uint8_t nrf24_rxfifo_hasdata(void);
uint8_t nrf24_get_pwidth(void);
void nrf24_read_rxfifo(uint8_t *data, int length);
uint8_t nrf24_rx_finish(void);

uint16_t nrf24_txstatus(void);
uint8_t nrf24_observe_tx(void);
uint8_t nrf24_data_sent(void);
void nrf24_setup_tx(void);
void nrf24_reuse_tx(void);
void nrf24_tx_start(const uint8_t *data, int length);
void nrf24_tx_to_addr(const uint8_t *addr, const uint8_t *data, int length);
uint8_t nrf24_tx_finish(void);

#define ADDR_WIDTH 5

#define ARD(x)      ((x) << 4)
#define ARC(x)      ((x) << 0)          
#define RX_P_NO(x)  (((x) >> 1) & 0x07)
#define RF_PWR(x)   ((x) << 1)

// nrf24 register bit mnemonics
#define EN_CRC      (1 << 3)
#define CRCO        (1 << 2)
#define PWR_UP      (1 << 1)
#define PRIM_RX     (1 << 0)
#define ENAA_P0     (1 << 0)
#define ENAA_P1     (1 << 1)
#define ENAA_P2     (1 << 2)
#define ENAA_P3     (1 << 3)
#define ENAA_P4     (1 << 4)
#define ENAA_P5     (1 << 5)
#define ENAA_ALL    0x3F        // bits 0-5
#define ERX_P0      (1 << 0)
#define ERX_P1      (1 << 1)
#define ERX_P2      (1 << 2)
#define ERX_P3      (1 << 3)
#define ERX_P4      (1 << 4)
#define ERX_P5      (1 << 5)
#define ERX_ALL     0x3F
#define CONT_WAVE   (1 << 7)
#define RF_DR_LO    (1 << 5)
#define RF_DR_HI    (1 << 3)
#define RF_DR_2M    (1 << 3)
#define RF_DR_1M    0
#define RF_DR_250K  (1 << 5)
#define PLL_LOCK    (1 << 4)
#define RX_DATA_RDY (1 << 6)
#define TX_DS       (1 << 5)
#define MAX_RT      (1 << 4)
#define TX_FULL     (1 << 0)
#define TX_REUSE    (1 << 6)
#define FIFO_FULL   (1 << 5)
#define TX_EMPTY    (1 << 4)
#define RX_FULL     (1 << 1)
#define RX_EMPTY    (1 << 0)
#define DPL_P5      (1 << 5)
#define DPL_P4      (1 << 4)
#define DPL_P3      (1 << 3)
#define DPL_P2      (1 << 2)
#define DPL_P1      (1 << 1)
#define DPL_P0      (1 << 0)
#define DPL_ALL     0x3F
#define EN_DPL      (1 << 2)
#define EN_ACK_PAY  (1 << 1)
#define EN_DYN_ACK  (1 << 1)

#endif
