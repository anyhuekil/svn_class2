'''
Created on 2017. 7. 25.

@author: kitcoop
'''
## 데이터 해당차원에 0이나 1로 채워 넣은 함수..
##  ones( 크기 ) : 해당하는 크기의 배열에 1로 데이터를 채워서
## 처리할 때.
import numpy as np
b1 = np.ones(10)
print(b1)
##  2차원의 배열을 만들 때, 듀플형식 (5,5)
##  zeros()는 데이터 0으로 입력 처리..
b2 = np.zeros((5,5))
print(b2)

## eye(행렬의 갯수, dtype=데이터형식ex)int)
##  ==> 해당 행렬에 대각선으로 데이터를

 입력된 형식이 나타난다.
ar = np.eye(5, dtype=int)
print(ar) 
## 대각선 데이터를 한행 올릴 때, k=올릴 행의 갯수
##                    내릴 때, k=-내릴 행의 갯수
ar = np.eye(5, k=2)
print(ar)
ar = np.eye(5, k=-1)
print(ar)

## 0~8까지 데이터를 나타내고, 3행3열의 행태로 처리..
ar = np.arange(25).reshape((5,5))
print(ar)
## 해당 배열의 사선에 있는 데이터 뽑아 내기..
## diag(배열) : 
br = np.diag(ar)
print("사선에 있는 데이터:",br)
cr = np.diag(ar, k=1)
print(cr)

cr = np.diag(ar, k=-2)
print(cr)
ar = np.empty((2,2))
print(ar)


