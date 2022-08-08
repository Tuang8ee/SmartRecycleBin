echo off
python -u "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Build.py"
DEL /F /Q Build
mkdir Build
"E:\Program Files (x86)\Microchip\xc8\v2.36\bin\xc8.exe" --chip=%1 --std=c90 --outdir=".\Build" ".\main.c" ".\Peripheral_Libs\Source\ADC.c" ".\Peripheral_Libs\Source\Configuration.c" ".\Peripheral_Libs\Source\GPIO.c" ".\Peripheral_Libs\Source\HBrightCtrl.c" ".\Peripheral_Libs\Source\Interrupts.c" ".\Peripheral_Libs\Source\LoopProcess.c" ".\Peripheral_Libs\Source\Timer.c" ".\Peripheral_Libs\Source\UART.c" ".\Peripheral_Libs\Source\UltraSonicSensor.c" --MSGDISABLE=359,1273,1388 --OPT=all 