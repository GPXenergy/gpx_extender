
#include <stdint.h>
#include "extender_config.h"
#include "crc.h"
#include "stm32l0xx_hal.h"


void crc_init(void)
{
    __HAL_RCC_CRC_CLK_ENABLE();
    
    // CRC8, no reversing of input or output data
    CRC->CR = CRC_CR_POLYSIZE_1;
    CRC->INIT = CRC_INITVALUE;
    CRC->POL = CRC8_POLY;
}

uint8_t calc_crc(uint8_t *data, uint32_t length)
{
    CRC->CR |= CRC_CR_RESET; // reset before new calculation
    
    for(uint8_t i = 0; i < length; i++){
        *((volatile uint8_t *)&CRC->DR) = data[i];  // cast to ensure 8-bit write access
    }
    return (uint8_t)CRC->DR;
}