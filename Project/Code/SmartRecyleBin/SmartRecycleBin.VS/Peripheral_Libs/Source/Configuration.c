/* 
 * File:   Configuration.h
 * Author: tuang
 *
 * Created on April 16, 2022, 9:23 AM
 */

#include "..\Hearder\Configuration.h"
#include "..\Hearder\GPIO.h"
#include "..\Hearder\Timer.h"
// #include "..\Hearder\WatchdogTimer.h"
#include "..\Hearder\UART.h"
#include "..\Hearder\ADC.h"


void Startup_Infor(Peripheral_Pin *GPIO, uint8_t index)
{
    while (index--)
    {
        GPIO_Write(GPIO -> Port, GPIO -> Pin, HIGH);
        delay_ms(100);
        GPIO_Write(GPIO -> Port, GPIO -> Pin, LOW);
        delay_ms(100);
    }  
}

void Reset_ADC_Register(void)
{
    /*RESET ADCON0 and ADCON1 Register*/
    ADCON0 = 0x00;
    ADCON1 = 0x00;
    /*SET all PIN in PORTA to Digital PIN*/
    ADCON1 |= (7 << 0);
}

void MCU_Config(void)
{
    /*=========== SET STARTUP VALUE ============*/
    // GPIO_Write(LED2.Port, LED2.Pin, HIGH);

    /*Blynk GPIO with n times:*/
    Startup_Infor(&BUZZER, 5);

    /*Timer0 config with interrupt mode:*/
    Timer2_Interrupt_Init();
    
    /*Reset ADC Register: Analog => Digital PIN mode*/
    Reset_ADC_Register();
    
    /*UART Configuration:*/
    UART_BASE_Init(9600);
    delay_ms(500);

    /*ADC Configuration*/
    // ADC_BASE_Init();
    
    UART_WriteStr("RESET: OK\n");
    GPIO_Write(LED2.Port, LED2.Pin, LOW);
}



