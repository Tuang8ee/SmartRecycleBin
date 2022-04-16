//#include "Header/main.h"
#include "main.h"


void Loop(void)
{
    GPIO_Toggle(&PORTC, PIN1);
//    delay_ms(100);
    Timer_Delay(TIMER2, 1000); 
}
void main(void) 
{
    MCU_Config();
    while(1)
    {
        Loop();
    }
}
