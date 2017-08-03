'''
Created on 2017. 7. 27.

@author: kitcoop

바이너리 파일 : 바이트 단위로 데이터를 읽고 쓰는 것
문자열을 기록할 수 없고, byte단위로만 기록
문자열의 경우 encode 함수를 이용해서 byte로 변형,
바이트를 문자열로 변환할 때는 decode 함수 이용

'''
import numpy as np

f = open("z03_test.bin","wb") ## 바이트 단위로 쓰기
f.write("안녕하세요".encode()) ## encoding 처리
f.close()
f = open("z03_test.bin","rb")
byteAr = f.read()
##print(byteAr) 문자열을 바이트 단위로 기록했으므로, 읽을 때 문자열로 변환
print(byteAr.decode()) ## decoding 처리..



