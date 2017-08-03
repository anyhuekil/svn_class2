'''
Created on 2017. 7. 27.

@author: kitcoop
zip파일 압축 zipfile모듈
1. ZipFile 함수로 압축객체 생성, write()함수를 이용해서 하나씩 압축
2. 압축해제 ZipFile을 만든 후, extractall() 처리

'''
import numpy as np
import zipfile
filelist=["z01_test.txt","z02_test.txt","z03_test.bin"]

with zipfile.ZipFile("z06_test.zip","w", compression=zipfile.ZIP_BZIP2) as myzip:
    for temp in filelist:
        myzip.write(temp)
##  extractall("경로설정")          
zipfile.ZipFile("z06_test.zip").extractall("./a01")  
'''
tar파일 압축은 tarfile 모듈
1. open함수를 압축 객체 생성, add함수를 통해 파일추가.
2. 압축해제  extractall() 호출
'''
import tarfile
filelist = ["a01_file.py","a02_file_read.py","a04_file_read2.py"]
with tarfile.open("z07_test.tar.gz","w:gz") as mytar:
    for temp in filelist:
        mytar.add(temp)
tarfile.open("z07_test.tar.gz").extractall("./a02")        


