/* 
 * File:   LoopProcess.h
 * Author: tuang
 *
 * Created on April 16, 2022, 8:50 AM
 */

#ifndef LOOPPROCESS_H
#define	LOOPPROCESS_H
#include "HBrightCtrl.h"


void Loop(void)
{
    /*TAT DONG CO*/
    Motor_Forward_Start(Motor_1);
    delay_ms(3000);
    
    /*TAT DONG CO*/

    Motor_Reverse_Start(Motor_1);
    delay_ms(3000);
}

/*
 ================================== START CODE ============================
 */


#endif	/* LOOPPROCESS_H */

