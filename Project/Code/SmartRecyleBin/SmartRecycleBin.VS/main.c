#include "main.h"
#include "Peripheral_Libs/Hearder/GPIO.h"

void main(void) 
{
    MCU_Config();
    GPIO_Write(Motor_0.Port, Motor_0.Pin, HIGH);
    
    while(1)
    {
        /*==================================*/
        Loop(&timeSysTick);
        // GPIO_Toggle(Motor_0.Port, Motor_0.Pin);
        // delay_ms(1000);

        if (timeReset_flag != 0)
        {
            timeReset_flag = 0;
        }
        /*==================================*/
    }
}
  

