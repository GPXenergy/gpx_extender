
#ifndef __SPI_H
#define __SPI_H

#include <inttypes.h>

void spi1_init(void);
void spi1_tx(const uint8_t *data, uint16_t length);
void spi1_rx(uint8_t *data, uint16_t length);
void spi1_txrx(const uint8_t *txdata, uint8_t *rxdata, uint16_t length);


#endif // __SPI_H 