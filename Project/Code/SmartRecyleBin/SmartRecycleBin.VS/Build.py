import glob
import os
import traceback

try:

    all_files = glob.glob(os.path.join("D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Source\\", "*.c"))
    
    ECHO = "echo off\n"
    MKDIR = "mkdir Build\n"
    PATH_XC = "\"E:\Program Files (x86)\Microchip\\xc8\\v2.36\pic\\bin\\xc8.exe\" " 
    CHIP = "--chip=%1 "
    OUTPUT =  "--outdir=\".\Build\" "
    FILE_MAIN = "\".\main.c\" " 


    # Create train.txt
    with open("Build.cmd", "w") as f:
        f.write(ECHO)
        f.write("python -u \"d:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Build.py\"\n")
        f.write(MKDIR + PATH_XC + CHIP + OUTPUT + FILE_MAIN)
        for idx in range(0, len(all_files)):
            f.write("\"" + all_files[idx] + "\"" + " ")
    for i in range(0, 10):
        print("\n")
    print("===================================================\n Build.cmd created!")
except:
    print("ERORR:")
    print(traceback.format_exc())
        
