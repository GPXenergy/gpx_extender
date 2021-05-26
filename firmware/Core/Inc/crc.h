
#ifndef __CRC_H
#define __CRC_H

#include <stdint.h>

void crc_init(void);
uint8_t calc_crc(uint8_t *data, uint32_t length);


#endif // _CRC_H 