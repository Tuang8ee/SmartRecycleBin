/* 
 * File:   Configuration.h
 * Author: tuang
 *
 * Created on April 16, 2022, 9:23 AM
 */

#ifndef CONFIGURATION_H
#define	CONFIGURATION_H
#include "GPIO.h"
#include "Timer.h"
#include "WatchdogTimer.h"
#include "UART.h"
//#include "Timer.h"
void MCU_Config(void)
{
    /*=========== SET STARTUP VALUE ============*/
    /*Timer0 config with interrupt mode:*/
    GPIO_Write(LED2.Port, LED2.Pin, HIGH);
    
    GPIO_Write(BUZZER.Port, BUZZER.Pin, HIGH);
    delay_ms(100);
    GPIO_Write(BUZZER.Port, BUZZER.Pin, LOW);
    delay_ms(100);
    GPIO_Write(BUZZER.Port, BUZZER.Pin, HIGH);
    delay_ms(100);
    GPIO_Write(BUZZER.Port, BUZZER.Pin, LOW);
    delay_ms(100);
    GPIO_Write(BUZZER.Port, BUZZER.Pin, HIGH);
    delay_ms(100);
    GPIO_Write(BUZZER.Port, BUZZER.Pin, LOW);
    delay_ms(100);
    GPIO_Write(BUZZER.Port, BUZZER.Pin, HIGH);
    delay_ms(1000);
    GPIO_Write(BUZZER.Port, BUZZER.Pin, LOW);
    delay_ms(100);
    Timer2_Interrupt_Init();
    
    /*RESET ADCON0 and ADCON1 Register*/
    ADCON0 = 0x00;
    ADCON1 = 0x00;
    /*SET all PIN in PORTA to Digital PIN*/
    ADCON1 |= (7 << 0);
    
    /*UART Configuration:*/
    UART_BASE_Init(9600);
    
    GPIO_Write(LED2.Port, LED2.Pin, LOW);
}

#endif	/* CONFIGURATION_H */

