'''
Created on 2017. 7. 25.

@author: kitcoop
'''
import numpy as np
## 1차 배열(벡터) 생성..
ar = np.array([1,2,3])
print(ar)
## 2차 배열 생성..
ar = np.array([[1,2,3],[4,5,6]])
print(ar)
## arange([시작,마지막) 으로 해당 크기의 배열을 만듦
##  arange(크기) 0부터 크기만큼의 배열을 생성..
ar = np.arange(10)
print(ar)
## 범위를 지정하고, 범위내에 같은 간격의 데이터를 설정..
## lispace(시작값, 마지막값, 갯수 )
ar = np.linspace(0,1,6) ## 0~1까지 6개의 데이터를 같은 간격으로 생성..
print(ar)
## 마지막 값에 대한 option  endpoint=False :마지막값은 포함하지 마세요..
ar = np.linspace(0,1,5, endpoint=False)
print(ar)
## 변형되는 배열 만들기.. reshape
##  reshape(1차원갯수, 2차원갯수,.....) 해당하는 차원의 데이터형태로 변경하세요..
ar = np.arange(10)
ar = ar.reshape(2,5) # 2*5배열으로 변경..
print(ar)


