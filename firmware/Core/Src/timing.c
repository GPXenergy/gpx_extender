
#include "stm32l0xx_hal.h"
#include <stdint.h>
#include "main.h"
#include "timing.h"
#include <stdio.h>



void tim2_init(void)
{
    __HAL_RCC_TIM2_CLK_ENABLE();
    
    TIM2->CR1 = 0;              // timer is disabled for config, no other bits for this reg
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
    
    TIM21->CR1 = 0;              // timer is disabled for config, no other bits for this reg
    TIM21->CR2 = 0;              // don't use TRGO
    
    TIM21->PSC = 32;             // prescaler
    TIM21->ARR = 0xffff;         // count_max 
    TIM21->EGR |= TIM_EGR_UG;    // update event to reload PSC and ARR
    while(!(TIM21->SR & TIM_SR_UIF));    // wait for UIF to be set, does not hapen immediately after writing to UG
  
    TIM21->SR = 0;               // clear UIF
    
    HAL_NVIC_SetPriority(TIM21_IRQn, 0, 0);
    
    // don't actually start the timer yet
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
        printf("no flag was set?\n");
        return waittime;
    }
}

void wait_for_btn()
{
    button_flag = 0;
    while(!(button_flag)){
        HAL_PWR_EnterSLEEPMode(PWR_LOWPOWERREGULATOR_ON, PWR_SLEEPENTRY_WFI);
    }
}