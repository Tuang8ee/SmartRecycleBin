#include "..\Hearder\LoopProcess.h"
#include "..\Hearder\HBrightCtrl.h"
#include "..\Hearder\UltraSonicSensor.h"
#include "..\Hearder\UART.h"
#include "..\Hearder\GPIO.h"



void Loop(uint32_t *timeSysTick)
{
    uint8_t d = 0, 
        moto = 0,
        TX_Str[10] = "";
    if(GPIO_Read(SW1.Port, SW1.Pin))
    {
        while(GPIO_Read(SW1.Port, SW1.Pin))
        {
            delay_ms(80);
        }
    }
    if(*timeSysTick % 100000 <= 50000)
    {
        if(GPIO_Read(Motor_2[forward_D1].Port, Motor_2[forward_D1].Pin))
        {
            // Motor_Reverse_Start(Motor_1);
            Motor_Reverse_Start(Motor_2);
            Motor_Reverse_Start(Motor_3);
            Motor_Reverse_Start(Motor_4);
        }
    }
    else
    {
        if(GPIO_Read(Motor_2[reverse_D2].Port, Motor_2[reverse_D2].Pin))
        {
            // Motor_Forward_Start(Motor_1);
            Motor_Forward_Start(Motor_2);
            Motor_Forward_Start(Motor_3);
            Motor_Forward_Start(Motor_4);
        }
    }
    if(*timeSysTick % 30000 == 0)
    {

    }
    if(*timeSysTick % 5000 <= 100)
    {
        // systick_flag = timeSysTick;
        d = UltraSonicSensor_Read(UltraSonic_2, timeSysTick);
        d = d * 2;
        if(d != 0)
        {
            sprintf(TX_Str, "D:%dcm\n\0", d);
            UART_Writes(TX_Str, strlen(TX_Str));
            if(d < 80)
            {
                GPIO_Write(LED1.Port, LED1.Pin, HIGH);
            }
            else
            {
                GPIO_Write(LED1.Port, LED1.Pin, LOW);
            }
        }
        else
        {
            GPIO_Write(LED1.Port, LED1.Pin, LOW);
        }
        
    }
        
}