'''
Created on 2017. 7. 26.

@author: kitcoop
배열에서 데이터 조건에 합당한 내용 처리하기..
1. 형식
    배열[ 조건-boolean ]
    1) boolean 값 : ==, !=, ~(==), &(and), | (or)
    ex) ar[ br == "A"]  : 
        br배열에 A 인 경우에는 True 그렇지 않는 경우 False
        해당 배열의 값이 True인 경우(행/열) 만 할당(slice)처리
    2) boolean값, index
       boolean값이 true인 경우에, 해당 행또는 열의 index
       두가지 조건을 다 만족하는 경우..
    ex) ar[br == "A", 2] : 'A'인 경우 행/열 인경우와, index가 열/행 
       경우만 slicing
       
    3) boolean값, index시작:index마지막..
    ex) ar[br == "A", 0:2] :열의 0부터 2까지  

'''
import numpy as np
## 상위 배열일 5개의 행인 데이터
ar = np.arange(20).reshape(5,4)
print(ar)
br = np.array(["A","B","C","A","C"])
## 문자열이 5개인 배열..
print(br)
## br에 문자열이  A인에 대한 여부를 boolean값을 처리..
print(br == "A")
ckr = br == "A"
print("ckr:",ckr)
## ar배열에 [  ] 안에 위에있는 ckr을 입력하면..
## 동일한 해당 배열의 값 중 true값에 slicing
## 결국은 true으로 처리된 1번째 행과 4번째 행만 슬라이싱됨..
print("조건check로 슬라이싱:", ar[br=="A"] )

## ar[행조건, 열index]
print("행조건과 열index처리:",ar[br=="A", 2])
print("행조건과 열index범위처리:",ar[br=="A", 0:2]) ## 열조건이 0~2까지





