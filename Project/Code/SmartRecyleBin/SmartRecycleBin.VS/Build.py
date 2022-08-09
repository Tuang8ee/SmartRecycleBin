import glob
import os
import traceback
import argparse

print("Build creating...\n===================================================\n")

parser = argparse.ArgumentParser()
parser.add_argument('--cpl', dest='cpl', type=str, help='Add compiler')
args = parser.parse_args()
print ("Input:", args.cpl)
compile_path = args.cpl


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
            if Find(data_file, line_check):
                print("Data search:", data_file)
                result = data_file
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

def respace_data_file(line_check, data_replace, file_path):
    list_data = []

    try:
        file = open(file_path, 'r+', encoding= 'utf-8')
        while True:
            file_cursor = file.tell()
            data_file = file.readline()
            
            if Find(data_file, line_check):
                list_data.append(data_replace)
            else:
                list_data.append(data_file)
            
            if(file_cursor == file.tell()):
                break
        pass
        file.close()

        file = open(file_path, 'w+', encoding= 'utf-8')
        for line in list_data:
            file.write(line)
    finally:
        file.close()
    pass

try:
    file_path = os.getcwd() + "\Peripheral_Libs\Hearder\LoopProcess.h"
    include_str = get_data_file("Peripheral_Libs\Hearder\define.h", file_path)
    respace_data_file(include_str, "    #include \"" + os.getcwd() + "\Peripheral_Libs\Hearder\define.h\"\n", file_path)
except:
    print("ERORR:")
    print(traceback.format_exc())




try:
    ECHO = "echo off\n"
    MKDIR = "DEL /F /Q Build\nmkdir Build\n"
    PATH_XC = "\"" + compile_path +"\" " 
    CHIP = "--chip=%2 --std=c90 "
    OUTPUT =  "--outdir=\".\Build\" "
    FILE_MAIN = "\".\main.c\" " 

    all_files = glob.glob(os.path.join(".\Peripheral_Libs\Source\\", "*.c"))

    # get_data_file("include", os.getcwd() + "\Peripheral_Libs\Hearder\LoopProcess.h")

    # Create train.txt
    with open("Build.cmd", "w") as f:
        f.write(ECHO)
        f.write(".\Build.exe" + " --cpl=%1" + "\n")
        f.write(MKDIR + PATH_XC + CHIP + OUTPUT + FILE_MAIN)
        for idx in range(0, len(all_files)):
            f.write("\"" + all_files[idx] + "\"" + " ")
            print("File:", all_files[idx])
        f.write("--MSGDISABLE=359,1273,1388 --OPT=all ")
    print("Build.cmd created!\n===================================================\n")
except:
    print("ERORR:")
    print(traceback.format_exc())



