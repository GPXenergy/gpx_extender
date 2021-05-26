
#include "stm32l0xx_hal.h"
#include <stdint.h>
#include "main.h"
#include "timing.h"
#include <stdio.h>

void tim2_init(void)
{
    __HAL_RCC_TIM2_CLK_ENABLE();
    
    TIM2->CR1 = 0;              // disable timer for config
    TIM2->CR2 = 0;              // don't use TRGO 
    
    TIM2->PSC = 32;             // prescaler
    TIM2->ARR = 0xffff;         // count_max 
    TIM2->EGR |= TIM_EGR_UG;    // update event to reload PSC and ARR
    while(!(TIM2->SR & TIM_SR_UIF));    //  wait for UIF to be set, does not hapen immediately after writing to UG
  
    TIM2->SR = 0;               // clear UIF
    
    HAL_NVIC_SetPriority(TIM2_IRQn, 0, 0);
    
    // don't actually start the timer yet
}

void tim21_init(void)
{
    __HAL_RCC_TIM21_CLK_ENABLE();
    
    TIM21->CR1 = 0;              // disable timer for config
    TIM21->CR2 = 0;              // don't use TRGO
    
    TIM21->PSC = 32;             // prescaler
    TIM21->ARR = 0xffff;         // count_max 
    TIM21->EGR |= TIM_EGR_UG;    // update event to reload PSC and ARR
    while(!(TIM21->SR & TIM_SR_UIF));    // wait for UIF to be set, does not hapen immediately after writing to UG
  
    TIM21->SR = 0;               // clear UIF
    
    HAL_NVIC_SetPriority(TIM21_IRQn, 0, 0); 
    
    // don't actually start the timer yet
}

void lptim1_init(void)
{
    __HAL_RCC_LPTIM1_CLK_ENABLE();
    
    
    LPTIM1->CR = 0; // disable timer
    
    LPTIM1->IER = LPTIM_IER_ARRMIE;         // ARR match interrupt enable (similar to UEV)
    LPTIM1->CFGR = LPTIM_CFGR_PRESC_0 | LPTIM_CFGR_PRESC_2;     // /32 prescaler (1uS clock)
    
    LPTIM1->CR |= LPTIM_CR_ENABLE;
    while(!(LPTIM1->CR &LPTIM_CR_ENABLE));  // timer enables after two counter clocks = 64 clock cycles
    
    LPTIM1->ARR = 10000;                    // LPTIM_ARR must be written AFTER the timer is enabled
    
    HAL_NVIC_SetPriority(LPTIM1_IRQn, 0, 0);

}

void start_btn_timer(void)
{
    btn_timer_active = 1;
    HAL_NVIC_EnableIRQ(LPTIM1_IRQn);
    LPTIM1->CR |= LPTIM_CR_CNTSTRT;     // start timer
}

void stop_btn_timer(void)
{
    btn_timer_active = 0;
    HAL_NVIC_DisableIRQ(LPTIM1_IRQn);
    LPTIM1->CR &= ~LPTIM_CR_CNTSTRT;    // stop timer
}

void call_after_us_cancel()
{
    HAL_NVIC_DisableIRQ(TIM21_IRQn);
    TIM21->DIER &= ~TIM_DIER_UIE; 
    TIM21->CR1 &= ~TIM_CR1_CEN;          // stop counter
    TIM21->CNT = 0;
}

void delay_us(uint16_t delay)
{
    HAL_NVIC_DisableIRQ(TIM2_IRQn);
    TIM2->DIER &= ~TIM_DIER_UIE; 
    TIM2->CR1 &= ~TIM_CR1_CEN;          // stop counter
    TIM2->ARR = delay;
    
    TIM2->EGR |= TIM_EGR_UG;            // generate update event 
    while(!(TIM2->SR & TIM_SR_UIF));    // wait for UIF to be set
    TIM2->SR = 0;                       // clear UIF
    
    HAL_NVIC_EnableIRQ(TIM2_IRQn);
    TIM2->DIER |= TIM_DIER_UIE;         // enable update event interrupt
    TIM2->CR1 |= TIM_CR1_CEN;           // start timer
    
    tim2_flag = 0;
    while(!tim2_flag){
        HAL_PWR_EnableSleepOnExit();
        HAL_PWR_EnterSLEEPMode(PWR_LOWPOWERREGULATOR_ON, PWR_SLEEPENTRY_WFI);
    }
    TIM2->DIER &= ~TIM_DIER_UIE; 
    TIM2->CR1 &= ~TIM_CR1_CEN;          // stop counter
}

void delay_ms(uint16_t delay)
{
    while(delay--){
        delay_us(1000);
    }
}

// call func after delay, if called while a delay is pending, the previous call will be overwritten
void call_after_us(uint16_t us, void (*func)(void))
{
    delayed_callback = func;
    
    HAL_NVIC_DisableIRQ(TIM21_IRQn);
    TIM21->DIER &= ~TIM_DIER_UIE; 
    TIM21->CR1 &= ~TIM_CR1_CEN;          // stop counter
    TIM21->CNT = 0;
    TIM21->ARR = us;                     // set delay 
    
    TIM21->EGR |= TIM_EGR_UG;            // generate update event 
    while(!(TIM21->SR & TIM_SR_UIF));    // wait for UIF to be set
    TIM21->SR = 0;                       // clear UIF
    
    HAL_NVIC_EnableIRQ(TIM21_IRQn);
    TIM21->DIER |= TIM_DIER_UIE;         // enable update event interrupt
    TIM21->CR1 |= TIM_CR1_CEN;           // start timer
}

// wait until IRQ or timer wakeup in us
uint16_t wait_for_IRQ(uint16_t timeout)
{
    uint16_t waittime = 0;
    nrf_irq_flag = 0;
    
    // setup timer to wait for timeout ms or us
    // make sure wakeup source was timer or IRQ
    
    HAL_NVIC_DisableIRQ(TIM2_IRQn);
    TIM2->DIER &= ~TIM_DIER_UIE; 
    TIM2->CR1 &= ~TIM_CR1_CEN;          // stop counter
    TIM2->ARR = timeout;
    
    TIM2->EGR |= TIM_EGR_UG;            // generate update event 
    while(!(TIM2->SR & TIM_SR_UIF));    // wait for UIF to be set
    TIM2->SR = 0;                       // clear UIF
    
    HAL_NVIC_EnableIRQ(TIM2_IRQn);
    TIM2->DIER |= TIM_DIER_UIE;         // enable update event interrupt
    TIM2->CR1 |= TIM_CR1_CEN;           // start timer
    tim2_flag = 0;
    
    while(!(nrf_irq_flag | tim2_flag)){
        HAL_PWR_EnableSleepOnExit();
        HAL_PWR_EnterSLEEPMode(PWR_LOWPOWERREGULATOR_ON, PWR_SLEEPENTRY_WFI);
    }
    waittime = (volatile uint16_t)TIM2->CNT;
    TIM2->CR1 &= ~TIM_CR1_CEN;          // stop counter
    
    if(nrf_irq_flag){ // IRQ wakeup
        return waittime;
    }
    else if(tim2_flag){
        return timeout;
    }
    else{
        return waittime;
    }
}

