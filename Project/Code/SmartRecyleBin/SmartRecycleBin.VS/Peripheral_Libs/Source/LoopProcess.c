#include "..\Hearder\LoopProcess.h"
#include "..\Hearder\HBrightCtrl.h"
#include "..\Hearder\UltraSonicSensor.h"
#include "..\Hearder\UART.h"
#include "..\Hearder\GPIO.h"
#include "..\Hearder\ADC.h"

#define THREDHOLD   0.4

// uint8_t TX_Array[10] = "";
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
uint32_t timeBuffer = 0;

uint8_t distanceBuffer = 0; 

typedef enum{
    WAIT_COMPRESS = 0,
    CHECK_COMPRESS,
    COMPRESSED,
    DON_T_COMPRESS,
    COMPRESSING
}CompressionState;
CompressionState compressionState = WAIT_COMPRESS;


/* =========== Trash Functions Controler =========== */ 
void TrashDoor_Open(TrashDoorState *state)
{
    if(*state == SS_OPEN)
    {
        if(timeBuffer == 0)
        {
            /* ===== TO DO: Ctrl Motor Close in here ===== */
            // GPIO_Write(LED2.Port, LED2.Pin, HIGH);
            GPIO_Write(BUZZER.Port, BUZZER.Pin, HIGH);
            // UART_WriteStr("SS_OPENING...\n");
            // Motor_RunToClose_Fn()

            /* ===================================== */

        }
        else if (timeBuffer > 20000)
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
        if(timeBuffer == 0)
        {
            /* ===== TO DO: Ctrl Motor Close in here ===== */
            // GPIO_Write(LED2.Port, LED2.Pin, HIGH);
            GPIO_Write(BUZZER.Port, BUZZER.Pin, HIGH);
            // UART_WriteStr("SW_OPENING...\n");
            // Motor_RunToClose_Fn()

            /* ===================================== */

        }
        else if (timeBuffer > 20000)
        {
            /* ====== TO DO: STOP Motor in here ====== */
            // Motor_Stop_Fn()
            /* ======================================= */

            // UART_WriteStr("SW_OPENED\n");
            *state = SW_OPENED;
        }
        
    }
}

void TrashDoor_Close(TrashDoorState *state)
{
    if(*state == WAIT_CLOSE)
    {
        if(timeBuffer > 60000)
        {
            *state = CLOSING;
            timeBuffer = 0;
        }
    }
    else if(*state == CLOSING)
    {
        
        if(timeBuffer == 0)
        {
            /* ===== TO DO: Ctrl Motor Close in here ===== */
            // UART_WriteStr("CLOSING...\n");
            // Motor_RunToClose_Fn()

            /* ===================================== */

        }
        else if (timeBuffer > 20000)
        {
            /* ====== TO DO: STOP Motor in here ====== */
            // GPIO_Write(LED2.Port, LED2.Pin, LOW);
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

uint8_t UltraSensor_Read(volatile uint16_t *ptimeSysTick)
{
    uint16_t distance = 0, distance_buff;
    
    uint8_t index = 0;
    for (index = 0; index <= 10; index++)
    {
        distance_buff =  2 * UltraSonicSensor_Read(UltraSonic_2, ptimeSysTick);
        if(distance_buff > 140)
        {
            return distance_buff;
        }
        else
        {
            distance += distance_buff;
        }
    }
    distance = distance / index;
    if(distance == 0)
    {
        distance = 150;
    }
    return distance;
}

void TrashDoor_Ctrl(TrashDoorState* state, volatile uint16_t *timeSysTick)
{
    // Button Ctrl:
    if(GPIO_Read(SW1.Port, SW1.Pin))
    {
        while(GPIO_Read(SW1.Port, SW1.Pin))
        {
            // delay_ms(80);
        }
        if(*state != CLOSED && *state != WAIT_CLOSE)
        {
            *state = CLOSING;
            timeBuffer  = 0;
            UART_WriteStr("CLOSE\n");
        }
        else
        {
            *state = SW_OPEN;
            timeBuffer  = 0;
            UART_WriteStr("OPEN\n");
        }
    }

    // Sensor Ctrl:
    else if(*timeSysTick % 3000 == 0)
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
                timeBuffer  = 0;
                // UART_WriteStr("OPEN\n");
            }
        }
        else
        {
            if(*state == SS_OPENED)
            {
                *state = WAIT_CLOSE;
                timeBuffer  = 0;
                // UART_WriteStr("LOSE\n");
            }
        }
    }

    if( *state == CLOSED || *state == CLOSING || *state == WAIT_CLOSE)
    {
        TrashDoor_Close(state);
    }
    else
    {
        TrashDoor_Open(state);
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
            if(compressionState != CHECK_COMPRESS && compressionState != COMPRESSING)
            {
                compressionState = CHECK_COMPRESS;
            }
        }
    }
}

void Compression_Run(volatile uint16_t *ptimeSysTick)
{
    uint8_t distance = 0;
    uint8_t TX[10] = "";
    switch (compressionState)
    {
        case WAIT_COMPRESS:
            GPIO_Write(LED1.Port, LED1.Pin, HIGH);
            GPIO_Write(Motor_0.Port, Motor_0.Pin, LOW);
            GPIO_Write(LED2.Port, LED2.Pin, LOW);
            break;
        case CHECK_COMPRESS:
            GPIO_Write(LED1.Port, LED1.Pin, LOW);
            GPIO_Write(Motor_0.Port, Motor_0.Pin, LOW);
            GPIO_Write(LED2.Port, LED2.Pin, LOW);

            distance = UltraSensor_Read(ptimeSysTick);
            if(distance >= 80)
            {
                compressionState = COMPRESSED;
                // sprintf(TX, "D:%dcm\n\0", distance);
                // UART_WriteStr(TX);
            }
            else
            {
                compressionState = COMPRESSING;
                // sprintf(TX, "C:%dcm\n\0", distance);
                // UART_WriteStr(TX);
                timeBuffer = 0;
            }
            break;
        case COMPRESSING:
            GPIO_Write(LED1.Port, LED1.Pin, LOW);
            GPIO_Write(LED2.Port, LED2.Pin, LOW);
            GPIO_Write(Motor_0.Port, Motor_0.Pin, HIGH);
            if(timeBuffer % 10000 == 0)
            {
                distance = UltraSensor_Read(ptimeSysTick);
                sprintf(TX, "C:%dcm\n\0", distance);
                UART_WriteStr(TX);
                if(distance - distanceBuffer >= 5)
                {
                    distanceBuffer = distance;
                }
                else
                {
                    // timeBuffer = 29999;
                }
            }
            if(timeBuffer <= 10)
            {
                Motor_Reverse_Start(Motor_2);
                Motor_Reverse_Start(Motor_3);
                Motor_Reverse_Start(Motor_4);
                timeBuffer = 11;
            }
            else if(timeBuffer == 30000)
            {

                Motor_Forward_Start(Motor_2);
                Motor_Forward_Start(Motor_3);
                Motor_Forward_Start(Motor_4);
            }
            else if(timeBuffer >= 80000)
            {
                compressionState = COMPRESSED;
                Motor_Stop(Motor_2);
                Motor_Stop(Motor_3);
                Motor_Stop(Motor_4);
            }
            break;
        case COMPRESSED:
            GPIO_Write(LED1.Port, LED1.Pin, LOW);
            GPIO_Write(Motor_0.Port, Motor_0.Pin, LOW);
            GPIO_Write(LED2.Port, LED2.Pin, HIGH);
            break;
        default:
            break;
    }
}

void TimeSysTickUpdate(volatile uint16_t *ptimeSysTick)
{
    uint16_t timeSysTickBuffer = 0;

    if(timeSysTickBuffer != *ptimeSysTick)
    {
        timeSysTickBuffer = *ptimeSysTick;
        timeBuffer++;
    }
}
void Loop(volatile uint16_t *ptimeSysTick)
{
    
    if(compressionState != COMPRESSING && compressionState != CHECK_COMPRESS)
    {
        TrashDoor_Ctrl(&trashDoorState, ptimeSysTick);
    }

    Compression_Ctrl();
    Compression_Run(ptimeSysTick);

    TimeSysTickUpdate(ptimeSysTick);
}

