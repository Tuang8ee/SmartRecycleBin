
#include "../Hearder/Interrupts.h"
    


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