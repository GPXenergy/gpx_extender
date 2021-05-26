#include "gpio.h"

void gpio_set(GPIO_TypeDef * port, uint_fast8_t pin)
{
    port->BSRR = pin;
}

void gpio_clear(GPIO_TypeDef * port, uint_fast8_t pin)
{
    port->BRR = pin; 
}

uint_fast8_t gpio_read(GPIO_TypeDef * port, uint_fast8_t pin)
{
    return(port->IDR & pin);
}

void gpio_write(GPIO_TypeDef * port, uint_fast8_t pin, uint_fast8_t state)
{
    if(state){
        port->ODR |= pin;
    }
    else{
        port->ODR &= ~pin;
    }
}


