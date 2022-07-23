#include "main.h"
#include "Peripheral_Libs/Hearder/GPIO.h"
#include "Peripheral_Libs/Hearder/HBrightCtrl.h"


void main(void) 
{
    MCU_Config();
    GPIO_Write(Motor_0.Port, Motor_0.Pin, HIGH);
    compressStepHandle.vong = 400;
    Step_Set(&compressStepHandle);


    while(1)
    {
        /*==================================*/
        Loop(&timeSysTick);

        /*==================================*/



        /*============== Test ==============*/
        // Motor_Ctrl(10, LOW);
        // if(GPIO_Read(SW1.Port, SW1.Pin) == HIGH)
        // {
        //     stepHandle.chieu = HIGH;
        //     stepHandle.vong = 400;
            
        //     Step_Set(&stepHandle);
        //     Step_Start(&stepHandle);
        // }
        // else if(GPIO_Read(SW2.Port, SW2.Pin) == HIGH)
        // {
        //     stepHandle.chieu = LOW;
        //     stepHandle.vong = 400;
        //     Step_Set(&stepHandle);
        //     Step_Start(&stepHandle);
        // }
        // else
        // {
        //     Step_Stop(&stepHandle);
        // }

        // if (timeReset_flag != 0)
        // {
        //     timeReset_flag = 0;
        // }
        /*==================================*/
    }
}
  

