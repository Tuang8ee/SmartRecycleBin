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
    GPIO_Write(motor_handle[forward_D3].Port, motor_handle[forward_D3].Pin, LOW);
    GPIO_Write(motor_handle[reverse_D4].Port, motor_handle[reverse_D4].Pin, LOW);
    delay_ms(20);
    GPIO_Write(motor_handle[forward_D1].Port, motor_handle[forward_D1].Pin, HIGH);
    GPIO_Write(motor_handle[reverse_D2].Port, motor_handle[reverse_D2].Pin, HIGH);
    delay_ms(20);
    GPIO_Write(motor_handle[forward_D1].Port, motor_handle[forward_D1].Pin, LOW);
    GPIO_Write(motor_handle[reverse_D2].Port, motor_handle[reverse_D2].Pin, LOW);
    delay_ms(400);
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


