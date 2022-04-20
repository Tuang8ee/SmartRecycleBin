
mkdir output

@REM xc8.exe
xc8.exe --chip=%1 --outdir=".\output" ".\Source\main.c"