/* 
 * File:   Interrupts.h
 * Author: tuang
 *
 * Created on April 17, 2022, 12:30 AM
 */

#ifndef INTERRUPTS_H
#define	INTERRUPTS_H

#ifdef	__cplusplus
extern "C" {
#endif
#include "define.h"
    

volatile uint32_t timeSysTick = 0;
uint16_t timeReset_flag = 0;
void __interrupt(high_priority) TIM2(void)
{
    /*If WDT disable then you can turn on TIME0 Interrupt:*/
    /*
    if(INTCON  & (1 << TMR0F) && INTCON & (1 << TMR0IE))
    {
        timeSysTick += 1;
        TMR0 = 99;
        TMR0IF = 0;
    }
    */
    if(PIE1 & (1 << 1)  && PIR1 & (1 << 1))
    {
        timeReset_flag++;
        timeSysTick += 1;
        TMR2 = 225;
        TMR2IF = 0;
    }
    if (timeReset_flag < 5000)
    {
        CLRWDT();
    }
}

#ifdef	__cplusplus
}
#endif

#endif	/* INTERRUPTS_H */

