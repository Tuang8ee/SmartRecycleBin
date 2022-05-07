/* 
 * File:   HBrightCtrl.h
 * Author: tuang
 *
 * Created on April 18, 2022, 12:04 AM
 */
#include "..\Hearder\GPIO.h"
#include "..\Hearder\HBrightCtrl.h"


void Motor_Stop(Peripheral_Pin *motor_handle)
{
    if(GPIO_Read(motor_handle[forward_D3].Port, motor_handle[forward_D3].Pin) || GPIO_Read(motor_handle[forward_D1].Port, motor_handle[forward_D1].Pin))
    {
        GPIO_Write(motor_handle[forward_D3].Port, motor_handle[forward_D3].Pin, LOW);
        GPIO_Write(motor_handle[reverse_D4].Port, motor_handle[reverse_D4].Pin, LOW);
        delay_us(10);
        GPIO_Write(motor_handle[forward_D1].Port, motor_handle[forward_D1].Pin, HIGH);
        GPIO_Write(motor_handle[reverse_D2].Port, motor_handle[reverse_D2].Pin, HIGH);
        delay_us(5);
        GPIO_Write(motor_handle[forward_D1].Port, motor_handle[forward_D1].Pin, LOW);
        delay_us(1);
        GPIO_Write(motor_handle[reverse_D4].Port, motor_handle[reverse_D4].Pin, HIGH);
        delay_us(100);
        GPIO_Write(motor_handle[reverse_D2].Port, motor_handle[reverse_D2].Pin, LOW);
        delay_us(1);
        GPIO_Write(motor_handle[forward_D3].Port, motor_handle[forward_D3].Pin, HIGH);
        delay_us(5);
        GPIO_Write(motor_handle[forward_D3].Port, motor_handle[forward_D3].Pin, LOW);
        GPIO_Write(motor_handle[reverse_D4].Port, motor_handle[reverse_D4].Pin, LOW);
        
    }
    else /*reverse_D4 && reverse_D2*/
    {
        GPIO_Write(motor_handle[forward_D3].Port, motor_handle[forward_D3].Pin, LOW);
        GPIO_Write(motor_handle[reverse_D4].Port, motor_handle[reverse_D4].Pin, LOW);
        delay_us(10);
        GPIO_Write(motor_handle[forward_D1].Port, motor_handle[forward_D1].Pin, HIGH);
        GPIO_Write(motor_handle[reverse_D2].Port, motor_handle[reverse_D2].Pin, HIGH);
        delay_us(5);
        GPIO_Write(motor_handle[reverse_D2].Port, motor_handle[reverse_D2].Pin, LOW);
        delay_us(1);
        GPIO_Write(motor_handle[forward_D3].Port, motor_handle[forward_D3].Pin, HIGH);
        delay_us(5);
        GPIO_Write(motor_handle[forward_D1].Port, motor_handle[forward_D1].Pin, LOW);
        delay_us(1);
        GPIO_Write(motor_handle[reverse_D4].Port, motor_handle[reverse_D4].Pin, HIGH);
        delay_us(5);
        GPIO_Write(motor_handle[forward_D3].Port, motor_handle[forward_D3].Pin, LOW);
        GPIO_Write(motor_handle[reverse_D4].Port, motor_handle[reverse_D4].Pin, LOW);
    }
    delay_ms(15);
    
}
void Motor_Forward_Start(Peripheral_Pin *motor_handle)
{
    /*Stop the MOTOR*/
    Motor_Stop(motor_handle);
    /*Start the MOTOR to forward direction*/
    GPIO_Write(motor_handle[forward_D1].Port, motor_handle[forward_D1].Pin, HIGH);
    GPIO_Write(motor_handle[forward_D3].Port, motor_handle[forward_D3].Pin, HIGH);
}
void Motor_Reverse_Start(Peripheral_Pin *motor_handle)
{
    /*Stop the MOTOR*/
    Motor_Stop(motor_handle);
    
    /*Start the MOTOR to reverse direction*/
    GPIO_Write(motor_handle[reverse_D2].Port, motor_handle[reverse_D2].Pin, HIGH);
    GPIO_Write(motor_handle[reverse_D4].Port, motor_handle[reverse_D4].Pin, HIGH);
}


