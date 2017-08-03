'''
Created on 2017. 7. 25.

@author: kitcoop

배열 처리..
1. 기본 형식..
 array(list형식)
 ex) np.array( [1,2,3] )

2. type( numpy의 배열) 
numpy의 데이터 형식을 나타냄(numpy.ndarray)

3. 형식:numpy배열이름.shape

4. 데이터값 접근..
    numpy배열이름[index값]
    1) 1차원
       이름 [index값] ex) ar[0], ar[1]
    2) 2차원
       이름[상위index][하위index]
       ex) br[0,0],br[0,1]
'''
import numpy as np
ar = np.array([1,2,3])
print(ar)
## type 확인..
print("타입확인:",type(ar))
## shape 확인..
print("shape확인:",ar.shape)
## 단일 데이터 접근..  
print(ar[0],ar[1],ar[2])
## 데이터 변경..
ar[0]=5
print(ar)
## 이차원 배열  :   array([ [1,2,3 ], [4,5,6] ]
##                       1  2
br = np.array([[1,2,3],[4,5,6]])
print(br)
print(br.shape)
print(br[0,0], br[0,1],br[1,0])








