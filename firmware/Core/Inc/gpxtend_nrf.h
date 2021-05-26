
#ifndef __GPXTENDO_NRF_H
#define __GPXTENDO_NRF_H

#include <inttypes.h>
#include "main.h"
#include "nrf24l01.h"

nrf_status nrf_announce(void);
nrf_status nrf_send(const uint8_t *addr, const uint8_t *txdata, uint8_t pwidth, uint16_t timeout);
nrf_status nrf_receive(uint8_t *rxdata, uint8_t *pwidth, uint8_t *pipe, uint16_t *timeout);
void nrf_init(const uint8_t *rxaddr);
void nrf_set_txready(void);
nrf_status nrf_get_announce_response(uint8_t *addr);
nrf_status nrf_send_announce_response(uint8_t *addr);


extern volatile uint_fast8_t tx_ready;
extern connection_side side;
extern const uint8_t ANNOUNCE_ADDR[5]  __attribute__((aligned (2)));
extern uint8_t device_addr[5] __attribute__((aligned (2)));
    
#endif  // __GPXTENDO_NRF_H

