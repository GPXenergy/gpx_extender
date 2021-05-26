
#ifndef __GPXTEND_NRF_H
#define __GPXTEND_NRF_H

#include <inttypes.h>
#include "main.h"
#include "nrf24l01.h"

nrf_status nrf_send(const uint8_t *addr, const uint8_t *txdata, uint8_t pwidth, uint16_t *timeout);
nrf_status nrf_receive(uint8_t *rxdata, uint8_t *pwidth, uint8_t *pipe, uint16_t *timeout);
void nrf_init(const uint8_t *rxaddr, const uint8_t *txaddr);
void nrf_set_txready(void);
nrf_status nrf_pair(uint8_t side);
nrf_status nrf_get_announce_response(uint8_t *addr);
nrf_status nrf_send_announce_response(uint8_t *addr);
nrf_status nrf_send_keepalive_packet(uint8_t *addr);
nrf_status nrf_get_keepalive_response(uint8_t *addr);

extern volatile uint_fast8_t tx_ready, keepalive_timeout;
extern connection_side side;
extern const uint8_t ANNOUNCE_ADDR[5]  __attribute__((aligned (2)));
extern uint8_t device_addr[5] __attribute__((aligned (2)));
    
#endif  // __GPXTEND_NRF_H

