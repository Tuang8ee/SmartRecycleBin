//#include "Header/main.h"
#include "main.h"
#include "Header/UltraSonicSensor.h"
#include "stdio.h"
#include "string.h"

void main(void) 
{   
    uint32_t systick_flag = 0;
    MCU_Config();
    UART_Writes("RESET: OK\n\0", strlen("RESET: OK\n\0"));
    uint32_t d = 0;
    char moto = 0;
    char TX_Str[10] = "";
    while(1)
    {
        if(GPIO_Read(SW1.Port, SW1.Pin))
        {
            while(GPIO_Read(SW1.Port, SW1.Pin))
            {
                delay_ms(80);
            }
        }
        if(timeSysTick % 100000 <= 50000)
        {
//            systick_flag = timeSysTick;
            if(moto == 0)
            {
//                Motor_Reverse_Start(Motor_1);
                Motor_Reverse_Start(Motor_2);
                Motor_Reverse_Start(Motor_3);
                Motor_Reverse_Start(Motor_4);
                moto = 1;
            }
        }
        else
        {
            if(moto == 1)
            {
//                Motor_Forward_Start(Motor_1);
                Motor_Forward_Start(Motor_2);
                Motor_Forward_Start(Motor_3);
                Motor_Forward_Start(Motor_4);
                moto = 0;
            }
        }
        if(timeSysTick % 30000 == 0)
        {
//            UART_Writes("TEST\n", 4);
            systick_flag = timeSysTick;
        }
        if(timeSysTick % 5000 <= 100)
        {
            systick_flag = timeSysTick;
            d = UltraSonicSensor_Read(UltraSonic_2, &timeSysTick);
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
        
        /*==================================*/
        
        
        
        
        /*==================================*/
        while(systick_flag == timeSysTick);
        timeReset_flag = 0;

    }
}
