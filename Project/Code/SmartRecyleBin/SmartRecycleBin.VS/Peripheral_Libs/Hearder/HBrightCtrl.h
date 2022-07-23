/* 
 * File:   HBrightCtrl.h
 * Author: tuang
 *
 * Created on April 18, 2022, 12:04 AM
 */

#ifndef HBRIGHTCTRL_H
#define	HBRIGHTCTRL_H

#ifdef	__cplusplus
extern "C" {
#endif
    #define forward_D1  0
    #define reverse_D2  1
    #define forward_D3  2
    #define reverse_D4  3
    
    void Motor_Forward_Start(Peripheral_Pin *motor_handle);
    void Motor_Reverse_Start(Peripheral_Pin *motor_handle);
    void Motor_Stop(Peripheral_Pin *motor_handle);

    void Step_Set(StepHandle *stepHandle);
    void Step_Stop(StepHandle *stepHandle);
    void Step_Start(StepHandle *stepHandle);
    void Step_Ctrl();
   
#ifdef	__cplusplus
}
#endif

#endif