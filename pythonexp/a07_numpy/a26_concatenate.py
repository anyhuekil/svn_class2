'''
Created on 2017. 7. 26.

@author: kitcoop

concatenate : 이항함수 - 배열2개를 가지고 작업하는 함수..
여러 개의 배열을 하 개로 합치는 함수
2차이상인 경우, x축과 y축 방향으로 합치는 2가지..
axis = 0 : Y축(세로방향) 
axis = 1 : X축(가로방향)

'''
import numpy as np
ar = [1,2,3,4]
br = [5,6,7,8]
print( np.concatenate( (ar, br) )  )

ar =np.array([[1,2],[3,4]])
br =np.array([[5,6],[7,8]])
## axis=0 은 같은 열배열 단위으로 합치는 
print(np.concatenate((ar,br), axis=0) )
## axis=1 같은 행끼리 합침
print(np.concatenate((ar,br), axis=1))






