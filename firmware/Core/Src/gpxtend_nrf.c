


#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include "main.h"
#include "nrf24l01.h"
#include "gpxtendo_nrf.h"
#include "timing.h"
#include "spi.h"

// consts
const static uint16_t LONG_TIMEOUT = 50000;
const static uint16_t POST_RX_DELAY = 200;  // usec delay for nrf24 hardware to switch from rxt to tx
const uint8_t ANNOUNCE_ADDR[5]  __attribute__((aligned (2))) = {0xa0, 0xa0, 0xa0, 0xa0, 0xa0};

volatile uint_fast8_t tx_ready = 1;

// nrf24 function pointers
const nrf24_spi_interface spi = {   .rx = spi1_rx,
                                    .tx = spi1_tx,
                                    .txrx = spi1_txrx,
                                    .CE_HIGH = user_CE_hi,
                                    .CE_LOW = user_CE_low,
                                    .CS_HIGH = user_CS_hi,
                                    .CS_LOW = user_CS_low};

const static nrf24l01_config nrf_config = {  .config_reg = EN_CRC,
                                             .autoack_enable = ENAA_ALL,
                                             .rx_addr = ERX_ALL,
                                             .retransmit = ARD(0) | ARC(8),
                                             .rf_channel = 100,
                                             .rf_setup = RF_DR_1M | RF_PWR(3),
                                             .dynamic_payload = DPL_ALL,
                                             .feature = EN_DPL,
                                             .rx_width_p0 = 0,
                                             .rx_width_p1 = 0,
                                             .rx_width_p2 = 0,
                                             .rx_width_p3 = 0,
                                             .rx_width_p4 = 0,
                                             .rx_width_p5 = 0};



void nrf_init(const uint8_t *rxaddr)
{
    uint8_t pipe_addr;

    user_led_on();
    nrf24_init(&nrf_config);
    
    nrf24_set_txaddr(ANNOUNCE_ADDR);
    nrf24_set_rxaddr(ANNOUNCE_ADDR, 0);
    nrf24_set_rxaddr(rxaddr, 1);
    pipe_addr = rxaddr[0] + 1;
    nrf24_set_rxaddr(&pipe_addr, 2);
    pipe_addr++;
    nrf24_set_rxaddr(&pipe_addr, 3);
    pipe_addr++;
    nrf24_set_rxaddr(&pipe_addr, 4);
    pipe_addr++;
    nrf24_set_rxaddr(&pipe_addr, 5);

    user_led_off();
}

/*
* @brief  enter listening mode and wait for data, read rxfifo. flushes rxfifo on start. if not NULL, timeout will be set to elapsed time
* @param  rx buffer (32 bytes minimum), packet width and pipe ptr (may be NULL), timeout in ms (NULL for infinite)
* @retval nrf_status: NRF_SUCCESS, NRF_TIMEOUT, NRF_FAIL (when packet invalid)
* @TODO: implement function that waits for IRQ with timeout
*/
nrf_status nrf_receive(uint8_t *rxdata, uint8_t *pwidth, uint8_t *pipe, uint16_t *timeout)
{
    uint8_t nrf_status, temp_pwidth;
    uint16_t waittime = 0, temp_timeout = LONG_TIMEOUT;

    if(timeout){
        temp_timeout = *timeout;
    }

    nrf24_listen();
    waittime = wait_for_IRQ(temp_timeout);
    
    if(timeout){
        *timeout = waittime;
    }
    
    tx_ready = 0;
    call_after_us(POST_RX_DELAY, nrf_set_txready);

    nrf_status = nrf24_status();
    if(nrf_status & RX_DATA_RDY){
        temp_pwidth = nrf24_get_pwidth();
        if(pwidth){
            *pwidth = temp_pwidth;
        }
        if(pipe){
            *pipe = RX_P_NO(nrf_status);
        }
        if(temp_pwidth > 32){
            nrf24_flush_rx();
            nrf24_rx_finish();
            return NRF_FAIL;
        }
        nrf24_read_rxfifo(rxdata, temp_pwidth);
        nrf24_ce_low();
        return NRF_SUCCESS;
    }
    else{
        nrf24_rx_finish();
        if(waittime == temp_timeout){
            return NRF_TIMEOUT;
        }
        else{
            return NRF_FAIL;
        }
    }
}

/*
* @brief  send data to address
* @param  address, tx buffer (max 32 bytes), packet width and timeout in ms (NULL for infinite)
* @retval nrf_status: NRF_SUCCESS, NRF_TIMEOUT, NRF_FAIL (when packet invalid)
*/
nrf_status nrf_send(const uint8_t *addr, const uint8_t *txdata, uint8_t pwidth, uint16_t timeout)
{
    uint8_t nrf_status = 0;
    uint16_t waittime = 0;

    if(timeout == 0){
        timeout = LONG_TIMEOUT;
    }
    while(!tx_ready){   // wait for nrf24 to be ready, should take a few us at most
        ;
    }
    nrf24_tx_to_addr(addr, txdata, pwidth);

    waittime = wait_for_IRQ(timeout);
    nrf_status = nrf24_status();

    nrf24_tx_finish();

    if(nrf_status & TX_DS){
        return NRF_SUCCESS;
    }
    else if(nrf_status & MAX_RT) {
        return NRF_NORESPONSE;
    }
    else{
        return NRF_FAIL;
    }
}

void nrf_set_txready(void)
{
    tx_ready = 1;
}

/*
* @brief  join the network after receiving ack on announce
* @param  
* @retval nrfnet_status: NRF_SUCCESS, NRF_FAIL
*/
nrf_status nrf_announce(void)
{
    uint8_t announce_packet[ADDR_WIDTH + 1];
    uint8_t nrf_status = 0;

    announce_packet[0] = ANNOUNCE;
    memcpy(&announce_packet[1], device_addr, ADDR_WIDTH);

    nrf24_tx_to_addr(ANNOUNCE_ADDR, announce_packet, ADDR_WIDTH + 1);
    wait_for_IRQ(LONG_TIMEOUT);
    nrf_status = nrf24_status();

    nrf24_tx_finish();
    if(nrf_status & TX_DS){
        return NRF_SUCCESS;
    }
    else if(nrf_status & MAX_RT){
        return NRF_NORESPONSE;
    }
    else{
        return NRF_FAIL;
    }
}

nrf_status nrf_send_announce_response(uint8_t *addr)
{
    uint8_t txdata[6];
    txdata[0] = ANNOUNCE_RESPONSE;
    
    memcpy(&txdata[1], device_addr, ADDR_WIDTH);

    return nrf_send(addr, txdata, ADDR_WIDTH + 1, 0);
}

/*
* @brief  join the network after receiving ack on announce
* @param  
* @retval nrfnet_status: NRF_SUCCESS, NRF_FAIL
*/
nrf_status nrf_get_announce_response(uint8_t *addr)
{
    uint8_t pipe, pwidth, rxdata[32], response_count = 0;
    uint16_t timeout, waittime = 0;

    // listen for  16ms 
    // save address
    while((waittime < 16000) && (response_count == 0)){
        timeout = 4000;   // needs reset because overwritten by receive
        switch(nrf_receive(rxdata, &pwidth, &pipe, &timeout)){
        case NRF_SUCCESS:
            if(pipe == 0){
                // wrong pipe, ignore?
                waittime += timeout;
                continue;
            }
            else if(rxdata[0] == ANNOUNCE_RESPONSE){
                memcpy(addr, &rxdata[1], ADDR_WIDTH);
                response_count++;
            }
            waittime += timeout;
            break;
        case NRF_TIMEOUT:
            waittime += timeout;
            break;
        default:
            return NRF_FAIL;
        }
    }
    if(response_count == 0){
        return NRF_NORESPONSE;
    }
    return NRF_SUCCESS;
}
