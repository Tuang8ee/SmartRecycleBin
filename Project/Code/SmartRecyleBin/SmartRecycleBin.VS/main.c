#include "main.h"
#include "Peripheral_Libs/Hearder/Configuration.h"
#include "Peripheral_Libs/Hearder/LoopProcess.h"
#include "Peripheral_Libs/Hearder/Interrupts.h"
#include "Peripheral_Libs/Hearder/GPIO.h"
#include "Peripheral_Libs/Hearder/HBrightCtrl.h"

void main(void)
{
    uint8_t test = 0;

    MCU_Config();
    GPIO_Write(Motor_0.Port, Motor_0.Pin, HIGH);

    if (GPIO_Read(SW1.Port, SW1.Pin) == HIGH)
    {
        test = 2;
    }
    else if (GPIO_Read(SW2.Port, SW2.Pin) == HIGH)
    {
        test = 3;
    }
    while (1)
    {
        if (test == 0)
        /*==================================*/
        {
            Loop(&timeSysTick);
        }
        /*==================================*/
        else if (test != 3)
        {
            /*============== Test ==============*/
            if (GPIO_Read(SW1.Port, SW1.Pin) == HIGH)
            {
                doorStepHandle.chieu = HIGH;
                doorStepHandle.vong = 400;
                Step_Set(&doorStepHandle);
                Step_Start(&doorStepHandle, &timeSysTick);
            }
            //Đi lên
            else if (GPIO_Read(SW2.Port, SW2.Pin) == HIGH)
            {
                doorStepHandle.chieu = LOW;
                doorStepHandle.vong = 400;
                Step_Set(&doorStepHandle);
                Step_Start(&doorStepHandle, &timeSysTick);
            }
            else
            {
                Step_Stop(&doorStepHandle);
            }
        }
        else
        {
            if (GPIO_Read(SW1.Port, SW1.Pin) == HIGH)
            {
                Motor_Forward_Start(&Compress_Motor);
            }
            //Đi xuống
            else if (GPIO_Read(SW2.Port, SW2.Pin) == HIGH)
            {
                Motor_Reverse_Start(&Compress_Motor);
            }
            else
            {
                Motor_Stop(&Compress_Motor);
            }
        }
        if (timeReset_flag != 0)
        {
            timeReset_flag = 0;
        }
        /*==================================*/
    }
}
