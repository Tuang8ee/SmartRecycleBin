#include "main.h"

void main(void) 
{
    uint32_t systick_flag = 0;
    MCU_Config();
    while(1)
    {
        /*==================================*/
        
        if(systick_flag == timeSysTick);
        else
        {
            Loop(&timeSysTick);
            timeReset_flag = 0;
        }

        /*==================================*/
    }
}
// void main(void)
// {
    
// }

