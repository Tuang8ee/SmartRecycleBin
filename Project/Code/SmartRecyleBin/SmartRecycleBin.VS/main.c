#include "main.h"
#include "Peripheral_Libs/Hearder/GPIO.h"

void main(void) 
{
    MCU_Config();
    
    while(1)
    {
        /*==================================*/
        Loop(&timeSysTick);

        if (timeReset_flag != 0)
        {
            timeReset_flag = 0;
        }
        /*==================================*/
    }
}
  

