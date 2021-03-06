#include "main.h"
#include "Peripheral_Libs/Hearder/GPIO.h"
#include "Peripheral_Libs/Hearder/HBrightCtrl.h"


void main(void) 
{
    uint8_t test = 0;
    MCU_Config();
    GPIO_Write(Motor_0.Port, Motor_0.Pin, HIGH);

    if(GPIO_Read(SW1.Port, SW1.Pin) == HIGH)
    {
        test = 1;
    }
    else if(GPIO_Read(SW2.Port, SW2.Pin) == HIGH)
    {
        test = 2;
    }

    while(1)
    {
        if (test == 0)
        /*==================================*/
        {
            Loop(&timeSysTick);
        }
        /*==================================*/


        else 
        {
        /*============== Test ==============*/
        // Đi xuống
            if(GPIO_Read(SW1.Port, SW1.Pin) == HIGH)
            {
                if (test == 1)
                {
                    compressStepHandle.chieu = HIGH;
                    compressStepHandle.vong = 400;
                    Step_Set(&compressStepHandle);
                    Step_Start(&compressStepHandle);

                    
                    winchStepHandle.chieu = HIGH;
                    winchStepHandle.vong = 400;
                    Step_Set(&winchStepHandle);
                    Step_Start(&winchStepHandle);
                }
                else
                {
                
                    doorStepHandle.chieu = HIGH;
                    doorStepHandle.vong = 400;
                    Step_Set(&doorStepHandle);
                    Step_Start(&doorStepHandle);
                }
            }
            //Đi lên
            else if(GPIO_Read(SW2.Port, SW2.Pin) == HIGH)
            {
                if (test == 1)
                {
                    compressStepHandle.chieu = LOW;
                    compressStepHandle.vong = 400;
                    Step_Set(&compressStepHandle);
                    Step_Start(&compressStepHandle);

                    
                    winchStepHandle.chieu = LOW;
                    winchStepHandle.vong = 400;
                    Step_Set(&winchStepHandle);
                    Step_Start(&winchStepHandle);
                }
                else
                {
                    doorStepHandle.chieu = LOW;
                    doorStepHandle.vong = 400;
                    Step_Set(&doorStepHandle);
                    Step_Start(&doorStepHandle);
                }
            }
            else
            {
                Step_Stop(&compressStepHandle);
                Step_Stop(&doorStepHandle);
                Step_Stop(&winchStepHandle);
            }
        }
        if (timeReset_flag != 0)
        {
            timeReset_flag = 0;
        }
        /*==================================*/
    }
}
  

