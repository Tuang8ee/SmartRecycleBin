/* 
 * File:   UART.h
 * Author: tuang
 *
 * Created on April 18, 2022, 9:37 PM
 */

#ifndef UART_H
#define	UART_H

#ifdef	__cplusplus
extern "C" {
#endif
#ifndef DEFINE_H
    #include "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
#endif

    void UART_BASE_Init(long baud);

    void UART_WriteChar(char data);
    void UART_Writes(const char *data, size_t len);
#ifdef	__cplusplus
}
#endif

#endif	/* UART_H */

