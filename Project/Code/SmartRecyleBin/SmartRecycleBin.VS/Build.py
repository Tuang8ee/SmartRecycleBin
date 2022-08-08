import glob
import os
import traceback

def get_data_file(line_check, file_path=""):
    """
    Hàm lấy dữ liệu từ file. 
    + line_check: dòng có chứa data cần lấy dữ liệu.
    + file_path: đường dẫn tới file cần đọc.
    """

    result = "NOTFOUND"
    check_string = False
    try:
        file = open(file_path, 'r+', encoding= 'utf-8')
        while True:
            file_cursor = file.tell()
            data_file = file.readline()
            if check_string == True:
                if len(data_file) > 1:
                    result = result + " " + data_file 
                else:
                    result = result + " " + data_file + "\n"
                for idex in result:
                    if idex == "\"":
                        check_string = False
                        result = result.replace("\"", "")
                        break
            if Find(data_file, line_check):
                print(data_file)
                # Xu ly tai day
                pass
            
            if(file_cursor == file.tell()):
                break
        pass
    finally:
        file.close()
    # print("KetQua:", result)
    return result
        
# Hàm tìm chuỗi str trong chuỗi data. Nếu có trả về True, ngược lại trả về False.
def Find(data, str):
    """
    Hàm giúp tìm chuỗi str trong chuỗi data. 
    + Nếu tìm thấy trả về True.
    + Nếu không tìm thấy trả về False.
    """
    if (data.find(str) > -1):
        return 1
    else:
        return 0



try:
    
    ECHO = "echo off\n"
    MKDIR = "DEL /F /Q Build\nmkdir Build\n"
    PATH_XC = "\"E:\Program Files (x86)\Microchip\\xc8\\v2.36\\bin\\xc8.exe\" " 
    CHIP = "--chip=%1 --std=c90 "
    OUTPUT =  "--outdir=\".\Build\" "
    FILE_MAIN = "\".\main.c\" " 

    all_files = glob.glob(os.path.join(".\Peripheral_Libs\Source\\", "*.c"))

    # get_data_file("include", os.getcwd() + "\Peripheral_Libs\Hearder\LoopProcess.h")

    # Create train.txt
    with open("Build.cmd", "w") as f:
        f.write(ECHO)
        f.write("python -u \"" + os.getcwd() + "\Build.py\"\n")
        f.write(MKDIR + PATH_XC + CHIP + OUTPUT + FILE_MAIN)
        for idx in range(0, len(all_files)):
            f.write("\"" + all_files[idx] + "\"" + " ")
        f.write("--MSGDISABLE=359,1273,1388 --OPT=all ")
    for i in range(0, 10):
        print("\n")
    print("===================================================\n Build.cmd created!")
except:
    print("ERORR:")
    print(traceback.format_exc())



