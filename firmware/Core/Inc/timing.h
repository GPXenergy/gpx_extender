

#ifndef __TIMING_H
#define __TIMING_H

#include <stdint.h>

void call_after_us_cancel(void);
    
uint16_t wait_for_IRQ(uint16_t timeout);
void call_after_us(uint16_t us, void (*func)(void));
void delay_us(uint16_t delay);
void delay_ms(uint16_t delay);
void wait_for_btn(void);
void tim2_init(void);
void tim21_init(void);
void lptim1_init(void);
void start_btn_timer(void);
void stop_btn_timer(void);

extern void (*delayed_callback)(void);
extern volatile uint_fast8_t nrf_irq_flag, tim2_flag, btn_timer_active;

#endif  // __TIMING_H
