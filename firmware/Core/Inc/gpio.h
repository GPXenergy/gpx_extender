

#ifndef __GPIO_H
#define __GPIO_H


#include <inttypes.h>
#include "stm32l011xx.h"

typedef struct{
    uint_fast8_t mode;
    uint_fast8_t otype;
    uint_fast8_t pull;
    uint_fast8_t speed;
    uint_fast8_t af;
} gpio_init_struct;

void gpio_set(GPIO_TypeDef * port, uint_fast8_t pin);
void gpio_clear(GPIO_TypeDef * port, uint_fast8_t pin);
uint_fast8_t gpio_read(GPIO_TypeDef * port, uint_fast8_t pin);
void gpio_write(GPIO_TypeDef * port, uint_fast8_t pin, uint_fast8_t state);
void gpio_init_pin(gpio_init_struct config, GPIO_TypeDef * port, uint_fast8_t pin);

#endif // _GPIO_H 