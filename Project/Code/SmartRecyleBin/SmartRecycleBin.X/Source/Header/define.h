/* 
 * File:   define.h
 * Author: tuang
 *
 * Created on April 16, 2022, 8:51 AM
 */

#ifndef DEFINE_H
#define	DEFINE_H

#ifndef uint8_t
    #define uint8_t     unsigned char
    #define int8_t      char
    #define uint16_t    unsigned int
    #define int8_t      char
    #define uint32_t    unsigned long int
#endif
#ifndef RESET
    #define RESET()	asm("ljmp $")
#endif
#include "Register.h"

#define delay_ms(x)     __delay_ms((unsigned long)x)
#define delay_us(x)     __delay_us((unsigned long)x)

#define TEST    GPIO_Read(&PORTA, PIN2)
#define LED(x)  GPIO_Write(&PORTB, PIN2, x)
//#define DC1(x)  GPIO_Write(&PORTC, PIN4, x)
//#define DC2(x)  GPIO_Write(&PORTC, PIN5, x)
//#define DC3(x)  GPIO_Write(&PORTC, PIN6, x)
//#define DC4(x)  GPIO_Write(&PORTC, PIN7, x)

typedef struct
{
    volatile unsigned char *Port;
    unsigned char Pin;
}Peripheral_Pin;
 
    /*Define for LED PIN:*/
    Peripheral_Pin LED1     = {&PORTB, PIN3};
    Peripheral_Pin LED2     = {&PORTB, PIN2};
    Peripheral_Pin BUZZER   = {&PORTB, PIN1};
    Peripheral_Pin Motor_0  = {&PORTB, PIN0};
    /*Motor 1 for HBridge*/
    Peripheral_Pin Motor_1[4] = {
                                    {&PORTC, PIN4},
                                    {&PORTC, PIN5},
                                    {&PORTC, PIN6},
                                    {&PORTC, PIN7}
                                };
    /*Motor 2 Pin for HBridge*/
    Peripheral_Pin Motor_2[4] = {
                                    {&PORTD, PIN4},
                                    {&PORTD, PIN5},
                                    {&PORTD, PIN6},
                                    {&PORTD, PIN7}
                                };
    /*Motor 3 Pin for HBridge*/
    Peripheral_Pin Motor_3[4] = {
                                    {&PORTD, PIN1},
                                    {&PORTD, PIN0},
                                    {&PORTC, PIN3},
                                    {&PORTC, PIN2}
                                };
    /*Motor 4 Pin for HBridge*/
    Peripheral_Pin Motor_4[4] = {
                                    {&PORTC, PIN1},
                                    {&PORTC, PIN0},
                                    {&PORTE, PIN2},
                                    {&PORTE, PIN1}
                                };
    
    /*
     * UltraSonic Sensor 1 PIN:
     *  + Trig PIN: PINB.4
     *  + Echo PIN: PINB.5
     */
    Peripheral_Pin UltraSonic_1[2] =  {
                                        {&PORTB, PIN4},
                                        {&PORTB, PIN5}        
                                      };
    /*
     * UltraSonic Sensor 2 PIN:
     *  + Trig PIN: PINA.2
     *  + Echo PIN: PINA.3
     */
    Peripheral_Pin UltraSonic_2[2] =  {
                                        {&PORTA, PIN2},
                                        {&PORTA, PIN3}        
                                      };
    /*
     * IR Sensor PIN:
     *  + IR Sensor 1: PINA.0
     *  + IR Sensor 2: PINA.1
     */
    Peripheral_Pin IR_Sensor_1 =    {&PORTA, PIN0};
    Peripheral_Pin IR_Sensor_2 =    {&PORTA, PIN1};
    
    /*
     * Switch PIN:
     *  + SW1: PINA.4
     *  + SW2: PINA.5
     */
    Peripheral_Pin SW1 =    {&PORTA, PIN4};
    Peripheral_Pin SW2 =    {&PORTA, PIN5};
           
                                
#endif	/* DEFINE_H */

