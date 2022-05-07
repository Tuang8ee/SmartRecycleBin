#include "..\Hearder\LoopProcess.h"
#include "..\Hearder\HBrightCtrl.h"
#include "..\Hearder\UltraSonicSensor.h"
#include "..\Hearder\UART.h"
#include "..\Hearder\GPIO.h"
#include "..\Hearder\ADC.h"

#define THREDHOLD   0.4

uint8_t TX_Array[10] = "";
typedef enum{
    CLOSED,
    CLOSING,
    WAIT_CLOSE,

    SW_OPEN,
    SW_OPENED,
    SS_OPEN,
    SS_OPENED
}TrashDoorState;
TrashDoorState trashDoorState = CLOSED;
uint16_t timeBuffer = 0;

typedef enum{
    WAIT_COMPRESS,
    COMPRESSING,
    COMPRESSED,
    DON_T_COMPRESS
}CompressionState;
CompressionState compressionState = WAIT_COMPRESS;


/* =========== Trash Functions Controler =========== */ 
void TrashDoor_Open(TrashDoorState *state, uint16_t *timeSysTick)
{
    if(*state == SS_OPEN)
    {
        if(*timeSysTick - timeBuffer == 0)
        {
            /* ===== TO DO: Ctrl Motor Close in here ===== */
            GPIO_Write(LED2.Port, LED2.Pin, HIGH);
            GPIO_Write(BUZZER.Port, BUZZER.Pin, HIGH);
            // UART_WriteStr("SS_OPENING...\n");
            // Motor_RunToClose_Fn()

            /* ===================================== */

        }
        else if (*timeSysTick - timeBuffer > 20000)
        {
            /* ====== TO DO: STOP Motor in here ====== */
            // Motor_Stop_Fn()
            /* ======================================= */

            // UART_WriteStr("SS_OPENED\n");
            *state = SS_OPENED;
        }
    }
    
    else if(*state == SW_OPEN)
    {
        if(*timeSysTick - timeBuffer == 0)
        {
            /* ===== TO DO: Ctrl Motor Close in here ===== */
            GPIO_Write(LED2.Port, LED2.Pin, HIGH);
            GPIO_Write(BUZZER.Port, BUZZER.Pin, HIGH);
            // UART_WriteStr("SW_OPENING...\n");
            // Motor_RunToClose_Fn()

            /* ===================================== */

        }
        else if (*timeSysTick - timeBuffer > 20000)
        {
            /* ====== TO DO: STOP Motor in here ====== */
            // Motor_Stop_Fn()
            /* ======================================= */

            // UART_WriteStr("SW_OPENED\n");
            *state = SW_OPENED;
        }
        
    }
}

void TrashDoor_Close(TrashDoorState *state, uint16_t *timeSysTick)
{
    if(*state == WAIT_CLOSE)
    {
        if(*timeSysTick - timeBuffer > 60000)
        {
            *state = CLOSING;
            timeBuffer = *timeSysTick;
        }
    }
    else if(*state == CLOSING)
    {
        
        if(*timeSysTick - timeBuffer == 0)
        {
            /* ===== TO DO: Ctrl Motor Close in here ===== */
            // UART_WriteStr("CLOSING...\n");
            // Motor_RunToClose_Fn()

            /* ===================================== */

        }
        else if (*timeSysTick - timeBuffer > 20000)
        {
            /* ====== TO DO: STOP Motor in here ====== */
            GPIO_Write(LED2.Port, LED2.Pin, LOW);
            GPIO_Write(BUZZER.Port, BUZZER.Pin, LOW);
            // Motor_Stop_Fn()
            /* ======================================= */

            // UART_WriteStr("CLOSED\n");
            *state = CLOSED;
        }
    }
}

double IRSensor_Read(void)
{
    double adc_value = 0.0;
    uint8_t index = 0;
    for (index = 0; index <= 10; index++)
    {
        adc_value += ADC_Read(0);
        if(adc_value < 100)
        {
            break;
        }
    }
    adc_value = adc_value / index;
    // sprintf(TX_Array, "%0.2fV %d\n\0", adc_value, index);
    // UART_WriteStr(TX_Array);
    adc_value = adc_value * 5 / 1024.0;
    return adc_value;
}

void TrashDoor_Ctrl(TrashDoorState* state, uint16_t timeSysTick)
{
    // Button Ctrl:
    if(GPIO_Read(SW1.Port, SW1.Pin))
    {
        while(GPIO_Read(SW1.Port, SW1.Pin))
        {
            delay_ms(80);
        }
        if(*state != CLOSED && *state != WAIT_CLOSE)
        {
            *state = CLOSING;
            timeBuffer = timeSysTick;
            // UART_WriteStr("CLOSE");
        }
        else
        {
            *state = SW_OPEN;
            timeBuffer = timeSysTick;
            // UART_WriteStr("OPEN");
        }
    }

    // Sensor Ctrl:
    if(timeSysTick % 3000 == 0)
    {
        if (IRSensor_Read() >= THREDHOLD)
        {
            if(*state != SS_OPEN && *state != SS_OPENED)
            {
                if(*state == WAIT_CLOSE)
                {
                    *state = SS_OPENED;
                }
                else
                {
                    *state = SS_OPEN;
                }
                timeBuffer = timeSysTick;
                // UART_WriteStr("OPEN\n");
            }
        }
        else
        {
            if(*state == SS_OPENED)
            {
                *state = WAIT_CLOSE;
                timeBuffer = timeSysTick;
                // UART_WriteStr("LOSE\n");
            }
        }
    }


    if( *state == CLOSED || *state == CLOSING || *state == WAIT_CLOSE)
    {
        TrashDoor_Close(state, &timeSysTick);
    }
    else
    {
        TrashDoor_Open(state, &timeSysTick);
    }
}
/* ================================================ */

void Compression_Ctrl(void)
{
    if (trashDoorState != CLOSED && trashDoorState != CLOSING)
    {
        compressionState = DON_T_COMPRESS;
    }
    else if(compressionState != COMPRESSED)
    {
        if(trashDoorState == CLOSING)
        {
            compressionState = WAIT_COMPRESS;
        }
        else
        {
            compressionState = COMPRESSING;
        }
    }
}

void Compression_Run(void)
{
    // if(compressionState == WAIT_COMPRESS)
    // {
    //     UART_WriteStr("WAIT_COMPRESS\n");
    // }
    if (compressionState == COMPRESSING)
    {
        // delay_ms(100);
        // UART_WriteStr("COMPRESSING\n");
        compressionState = COMPRESSED;
    }
    // else if (compressionState == COMPRESSED)
    // {
    //     UART_WriteStr("COMPRESSED\n");
    // }
    
    
}

void Loop(volatile uint16_t *ptimeSysTick)
{
    uint16_t timeSysTick = *ptimeSysTick;
    uint8_t distance = 0;
    
    TrashDoor_Ctrl(&trashDoorState, timeSysTick);
    Compression_Ctrl();
    Compression_Run();

    // if(timeSysTick % 10000 == 0)
    // {
    //     double adc_value = ADC_Read(0);
    //     sprintf(TX_Array, "ADC0:%0.2fV\n\0", adc_value/1024.0 * 5.0);
    //     UART_WriteStr(TX_Array);
    // }
    // UART_WriteStr("Test\n");
    // delay_ms(1000);
}




// void Loop(volatile uint16_t *ptimeSysTick)
// {
//     uint16_t timeSysTick = *ptimeSysTick;
//     uint8_t d = 0, 
//             TX_Str[10] = "";
//     // if(GPIO_Read(SW1.Port, SW1.Pin))
//     // {
//     //     while(GPIO_Read(SW1.Port, SW1.Pin))
//     //     {
//     //         delay_ms(80);
//     //     }
//     // }
//     if(timeSysTick % 27000 == 0)
//     {
//         if(GPIO_Read(Motor_2[forward_D1].Port, Motor_2[forward_D1].Pin) == HIGH)
//         {
//             Motor_Stop(Motor_2);
//             Motor_Stop(Motor_3);
//             Motor_Stop(Motor_4);
//             delay_ms(500);
//             // Motor_Reverse_Start(Motor_1);
//             Motor_Reverse_Start(Motor_2);
//             Motor_Reverse_Start(Motor_3);
//             Motor_Reverse_Start(Motor_4);
//             GPIO_Write(LED2.Port, LED2.Pin, HIGH);
//         }
//         else
//         {
//             Motor_Stop(Motor_2);
//             Motor_Stop(Motor_3);
//             Motor_Stop(Motor_4);
//             delay_ms(500);
//             // Motor_Forward_Start(Motor_1);
//             Motor_Forward_Start(Motor_2);
//             Motor_Forward_Start(Motor_3);
//             Motor_Forward_Start(Motor_4);
//             GPIO_Write(LED2.Port, LED2.Pin, LOW);
//         }
//     }
    
//     if(timeSysTick % 10000 == 0)
//     {
//         GPIO_Toggle(LED2.Port, LED2.Pin);
//         // test_2();
//         sprintf(TX_Str, "ADC0:%d\n\0", ADC_Read(0));
//         UART_Writes(TX_Str, strlen(TX_Str));
//     }
//     if(timeSysTick % 5000 <= 100)
//     {
//         d = UltraSonicSensor_Read(UltraSonic_2, ptimeSysTick);
//         d = d * 2;
//         if(d != 0)
//         {
//             sprintf(TX_Str, "D:%dcm\n\0", d);
//             UART_Writes(TX_Str, strlen(TX_Str));
//             if(d < 80)
//             {
//                 GPIO_Write(LED1.Port, LED1.Pin, HIGH);
//             }
//             else
//             {
//                 GPIO_Write(LED1.Port, LED1.Pin, LOW);
//             }
//         }
//         else
//         {
//             GPIO_Write(LED1.Port, LED1.Pin, LOW);
//         }
        
//     }
        
// }