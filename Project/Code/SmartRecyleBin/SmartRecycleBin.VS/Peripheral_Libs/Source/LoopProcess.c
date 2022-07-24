#include "..\Hearder\LoopProcess.h"
#include "..\Hearder\HBrightCtrl.h"
#include "..\Hearder\UltraSonicSensor.h"
#include "..\Hearder\UART.h"
#include "..\Hearder\GPIO.h"
#include "..\Hearder\ADC.h"

#define IR_VALUE_THREDHOLD          1.2
#define DISTANCE_THREADHOLD         80
#define DISTANCE_SPACE_TO_COMPRESS  5
#define WAIT_DOOR_MOTOR_RUN         2000
#define CTRL_DOOR_TIME              10

#define WAIT_CLOSE_TIME             60000
#define READ_IR_SENSER_CYCLE        3000


#define TIME_STARTUP_COMPRESS       10
#define TIME_COMPRESS               70000
#define TIME_UNCOMPRESS             70000



#define MO      HIGH
#define DONG    LOW

#define NENXUONG     HIGH
#define KEOLEN       LOW
// uint8_t TX_Array[10] = "";

/* Define */

    /* ======== Define for Door Ctrl Procession ======== */ 
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
    /*==================================================*/


    /* ======== Define for Compress Procession ======== */ 
    uint8_t distanceBuffer = 0; 
    typedef enum{
        WAIT_COMPRESS = 0,
        CHECK_COMPRESS,
        COMPRESSED,
        DON_T_COMPRESS,
        COMPRESSING
    }CompressionState;
    CompressionState compressionState = WAIT_COMPRESS;
    /*==================================================*/
    

    /* ======== Define for Disinfect Procession ======== */ 
    typedef enum{
        WAIT_DISINFECTING = 0,
        DISINFECTING, 
        DISINFECTED
    }DisinfectionState;

    DisinfectionState disinfectionState = DISINFECTED;
    /*==================================================*/

/* End Define */


/* Code: Function:*/

/* ===== Sensor Procession Functions Controler ===== */ 
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
/* ================================================ */


/* =========== Trash Functions Controler =========== */ 
void TrashDoor_Open(TrashDoorState *state)
{
    if(*state == SS_OPEN)
    {
        if(timeBuffer <= CTRL_DOOR_TIME)
        {
            /* ===== TO DO: Ctrl Motor Close in here ===== */
            // GPIO_Write(LED2.Port, LED2.Pin, HIGH);
            GPIO_Write(BUZZER.Port, BUZZER.Pin, HIGH);
            // UART_WriteStr("SS_OPENING...\n");

            // Motor_RunToOpen_Fn()

            // Motor_Forward_Start(Door_Motor);
            doorStepHandle.chieu = MO;
            doorStepHandle.vong = 5;
            Step_Set(&doorStepHandle);

            timeBuffer = CTRL_DOOR_TIME + 1;

            /* ===================================== */

        }
        else if (timeBuffer > WAIT_DOOR_MOTOR_RUN)
        {
            /* ====== TO DO: STOP Motor in here ====== */
            // Motor_Stop_Fn()

            // Motor_Stop(Door_Motor);
            Step_Stop(&doorStepHandle);
            /* ======================================= */

            // UART_WriteStr("SS_OPENED\n");
            *state = SS_OPENED;
        }
    }
    
    else if(*state == SW_OPEN)
    {
        if(timeBuffer <= CTRL_DOOR_TIME)
        {
            /* ===== TO DO: Ctrl Motor Close in here ===== */
            // GPIO_Write(LED2.Port, LED2.Pin, HIGH);
            GPIO_Write(BUZZER.Port, BUZZER.Pin, HIGH);
            // UART_WriteStr("SW_OPENING...\n");
            // Motor_RunToOpen_Fn()

            // Motor_Forward_Start(Door_Motor);
            doorStepHandle.chieu = MO;
            doorStepHandle.vong = 5;
            Step_Set(&doorStepHandle);

            timeBuffer = CTRL_DOOR_TIME + 1;
            /* ===================================== */

        }
        else if (timeBuffer > WAIT_DOOR_MOTOR_RUN)
        {
            /* ====== TO DO: STOP Motor in here ====== */
            // Motor_Stop_Fn()

            // Motor_Stop(Door_Motor);
            Step_Stop(&doorStepHandle);
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
        if(timeBuffer > WAIT_CLOSE_TIME)
        {
            *state = CLOSING;
            timeBuffer = 0;
        }
    }
    else if(*state == CLOSING)
    {
        
        if(timeBuffer <= CTRL_DOOR_TIME)
        {
            /* ===== TO DO: Ctrl Motor Close in here ===== */
            // UART_WriteStr("CLOSING...\n");
            // Motor_RunToClose_Fn()

            // Motor_Reverse_Start(Door_Motor);
            doorStepHandle.chieu = DONG;
            doorStepHandle.vong = 5;
            Step_Set(&doorStepHandle);

            timeBuffer = CTRL_DOOR_TIME + 1;
            /* ===================================== */

        }
        else if (timeBuffer > WAIT_DOOR_MOTOR_RUN)
        {
            /* ====== TO DO: STOP Motor in here ====== */
            // GPIO_Write(LED2.Port, LED2.Pin, LOW);
            GPIO_Write(BUZZER.Port, BUZZER.Pin, LOW);
            // Motor_Stop_Fn()

            // Motor_Stop(Door_Motor);
            Step_Stop(&doorStepHandle);
            /* ======================================= */

            // UART_WriteStr("CLOSED\n");
            *state = CLOSED;
        }
    }
}

void TrashDoor_Ctrl(TrashDoorState* state, volatile uint16_t *timeSysTick)
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
            timeBuffer  = 0;
            // UART_WriteStr("CLOSE\n");
        }
        else
        {
            *state = SW_OPEN;
            timeBuffer  = 0;
            // UART_WriteStr("OPEN\n");
        }
    }

    // Sensor Ctrl:
    else if(*timeSysTick % READ_IR_SENSER_CYCLE == 0)
    {
        if (IRSensor_Read() >= IR_VALUE_THREDHOLD)
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


/* ======== Compression Functions Controler ======== */ 
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
            // GPIO_Write(Motor_0.Port, Motor_0.Pin, LOW);
            GPIO_Write(LED2.Port, LED2.Pin, LOW);
            break;
        case CHECK_COMPRESS:
            GPIO_Write(LED1.Port, LED1.Pin, LOW);
            // GPIO_Write(Motor_0.Port, Motor_0.Pin, LOW);
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
            // GPIO_Write(Motor_0.Port, Motor_0.Pin, HIGH);
            if(timeBuffer % 10000 == 0)
            {
                distance = UltraSensor_Read(ptimeSysTick);
                // sprintf(TX, "C:%dcm\n\0", distance);
                // UART_WriteStr(TX);
                // if(timeBuffer < TIME_COMPRESS)
                // {
                //     if(distance - distanceBuffer >= DISTANCE_SPACE_TO_COMPRESS)
                //     {
                //         distanceBuffer = distance;
                //     }
                //     else
                //     {
                //         if(timeBuffer < TIME_COMPRESS)
                //         {
                //             timeBuffer = TIME_COMPRESS;
                //         }
                //     }
                // }
                // else if(timeBuffer < TIME_COMPRESS)
                // {
                //     if(distanceBuffer - distance >= DISTANCE_SPACE_TO_COMPRESS)
                //     {
                //         distanceBuffer = distance;
                //     }
                //     else
                //     {
                //         if(timeBuffer < TIME_COMPRESS + TIME_UNCOMPRESS)
                //         {
                //             timeBuffer = TIME_COMPRESS + TIME_UNCOMPRESS;
                //         }
                //     }
                // }
            }
            if(timeBuffer <= TIME_STARTUP_COMPRESS)
            {
                /* ============= Normal Motor Ctrl ============= */
                // Motor_Reverse_Start(Compress_Motor);

                /* ============================================= */

                /* ============= Step Motor Ctrl ============= */
                compressStepHandle.chieu = NENXUONG;
                compressStepHandle.vong = 70;
                Step_Set(&compressStepHandle);

                winchStepHandle.chieu = NENXUONG;
                winchStepHandle.vong = 70;
                Step_Set(&winchStepHandle);

                timeBuffer = TIME_STARTUP_COMPRESS + 1;
                /* ============================================= */
            }
            else if(timeBuffer == TIME_COMPRESS)
            {
                /* ============= Normal Motor Ctrl ============= */
                // Motor_Forward_Start(Compress_Motor);
                
                /* ============================================= */
                
                /* ============= Step Motor Ctrl ============= */
                compressStepHandle.chieu = KEOLEN;
                compressStepHandle.vong = 70;
                Step_Set(&compressStepHandle);
                
                winchStepHandle.chieu = KEOLEN;
                winchStepHandle.vong = 70;
                Step_Set(&winchStepHandle);

                timeBuffer = TIME_COMPRESS + 1;
                /* ============================================= */
            }
            else if(timeBuffer >= TIME_COMPRESS + TIME_UNCOMPRESS)
            {
                /* ============= Normal Motor Ctrl ============= */
                // Motor_Stop(Compress_Motor);

                /* ============================================= */
                
                /* ============= Step Motor Ctrl ============= */
                Step_Stop(&compressStepHandle);
                /* ============================================= */
                compressionState = COMPRESSED;
            }
            break;
        case COMPRESSED:
            GPIO_Write(LED1.Port, LED1.Pin, LOW);
            // GPIO_Write(Motor_0.Port, Motor_0.Pin, LOW);
            GPIO_Write(LED2.Port, LED2.Pin, HIGH);
            break;
        default:
            break;
    }
}
/* ================================================ */



/* ======= Disinfection Functions Controler ======= */ 
void Disinfection_Ctrl(void)
{
    if(compressionState != COMPRESSED)
    {
        disinfectionState = WAIT_DISINFECTING;
    }
    else
    {
        if(disinfectionState == WAIT_DISINFECTING)
        {
            disinfectionState = DISINFECTING;
            timeBuffer = 0;
        }
    }
}

void Disionfection_Run(void)
{
    if(disinfectionState == DISINFECTING)
    {
        if(timeBuffer <= 5)
        {
            GPIO_Write(Motor_0.Port, Motor_0.Pin, LOW);
            timeBuffer = 6;
        }
        else if (timeBuffer >= 20000)
        {
            GPIO_Write(Motor_0.Port, Motor_0.Pin, HIGH);
            disinfectionState = DISINFECTED;
        }
        
    }
}
/* ================================================ */



/*============== System Time Function ==============*/
uint16_t timeSysTickBuffer = 0;
void TimeSysTickUpdate(volatile uint16_t *ptimeSysTick)
{
    // uint8_t TX[10] = "";
    if(timeSysTickBuffer != *ptimeSysTick)
    {
        timeSysTickBuffer = *ptimeSysTick;
        timeBuffer++;
    }
    // if (*ptimeSysTick % 10000 == 0)
    // {
    //     // sprintf(TX, "T:%d\n\0", timeBuffer);
    //     // UART_WriteStr(TX);
    // }
}
/* ================================================ */

/* End Function Code */





/* Code: Loop Function */
void Loop(volatile uint16_t *ptimeSysTick)
{
    
    if(compressionState != COMPRESSING && compressionState != CHECK_COMPRESS)
    {
        TrashDoor_Ctrl(&trashDoorState, ptimeSysTick);
    }

    Compression_Ctrl();
    Compression_Run(ptimeSysTick);

    Disinfection_Ctrl();
    Disionfection_Run();

    
    Step_Start(&compressStepHandle);
    Step_Start(&winchStepHandle);
    Step_Start(&doorStepHandle);

    TimeSysTickUpdate(ptimeSysTick);
}

/* End Code */
