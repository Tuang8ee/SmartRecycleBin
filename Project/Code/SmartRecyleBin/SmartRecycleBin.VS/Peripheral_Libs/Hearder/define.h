/* 
 * File:   define.h
 * Author: tuang
 *
 * Created on April 16, 2022, 8:51 AM
 */

#ifndef DEFINE_H
#define	DEFINE_H

#include "string.h"
#include "stdio.h"

#ifndef uint8_t
    typedef unsigned char   uint8_t;
    typedef char            int8_t;
    typedef unsigned int    uint16_t;
    typedef int             int16_t;
    typedef unsigned long   uint32_t;
    typedef long            int32_t;
#endif
#ifndef RESET
    #define RESET()	asm("ljmp $")
#endif

#include "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\Register.h"

#define delay_ms(x)     __delay_ms((unsigned long)x)
#define delay_us(x)     __delay_us((unsigned long)x)

#define TEST    GPIO_Read(&PORTA, PIN2)
#define LED(x)  GPIO_Write(&PORTB, PIN2, x)
//#define DC1(x)  GPIO_Write(&PORTC, PIN4, x)
//#define DC2(x)  GPIO_Write(&PORTC, PIN5, x)
//#define DC3(x)  GPIO_Write(&PORTC, PIN6, x)
//#define DC4(x)  GPIO_Write(&PORTC, PIN7, x)

typedef struct{
    volatile uint8_t *Port;
    uint8_t Pin;
}
Peripheral_Pin;

typedef struct 
{
    uint16_t vong;
    uint32_t step;
    uint8_t chieu;
    Peripheral_Pin DIR_Pin;
    Peripheral_Pin PUL_Pin;
    Peripheral_Pin ENA_Pin;
}StepHandle;
 
    /*Define for LED PIN:*/
    Peripheral_Pin LED1     = {&PORTB, PIN3};
    Peripheral_Pin LED2     = {&PORTB, PIN2};
    Peripheral_Pin BUZZER   = {&PORTB, PIN1};
    Peripheral_Pin Motor_0  = {&PORTB, PIN0};

    /* Step Motor for compress PIN */
    StepHandle compressStepHandle = {
                                        0,
                                        0,
                                        HIGH,
                                        {&PORTD, PIN6}, //D7
                                        {&PORTD, PIN5}, //D6
                                        {&PORTD, PIN7}, //D8
                                    };
    
    /* Step Motor for Door PIN */
    StepHandle doorStepHandle = {
                                    0,
                                    0,
                                    HIGH,
                                    {&PORTC, PIN3}, //D11
                                    {&PORTD, PIN0}, //D10
                                    {&PORTC, PIN2}, //D12
                                };

    /* Step Motor for winch PIN */
    StepHandle winchStepHandle = {
                                    0,
                                    0,
                                    HIGH,
                                    {&PORTE, PIN2}, //D15
                                    {&PORTC, PIN0}, //D14
                                    {&PORTE, PIN1}, //D16
                                 };


    /*Motor 1 for HBridge*/
                // Peripheral_Pin Motor_1[4] = {
                //                                 {&PORTC, PIN4},
                //                                 {&PORTC, PIN5},
                //                                 {&PORTC, PIN6},
                //                                 {&PORTC, PIN7}
                //                             };
    
    /*Motor 2 Pin for HBridge*/
                // Peripheral_Pin Compress_Motor[4] = {
                //                                 {&PORTD, PIN4},
                //                                 {&PORTD, PIN5},
                //                                 {&PORTD, PIN6},
                //                                 {&PORTD, PIN7}
                //                             };
    
    /*Motor 3 Pin for HBridge*/
    // Peripheral_Pin Door_Motor[4] = {
    //                                 {&PORTD, PIN1},
    //                                 {&PORTD, PIN0},
    //                                 {&PORTC, PIN3},
    //                                 {&PORTC, PIN2}
    //                             };
    
    /*Motor 4 Pin for HBridge*/
                // Peripheral_Pin Motor_4[4] = {
                //                                 {&PORTC, PIN1},
                //                                 {&PORTC, PIN0},
                //                                 {&PORTE, PIN2},
                //                                 {&PORTE, PIN1}
                //                             };
    
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

