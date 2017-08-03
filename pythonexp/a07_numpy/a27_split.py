'''
Created on 2017. 7. 26.

@author: kitcoop
split()
배열을 여거 개의 크기로 나누어 주는 함수..
나누는 기준에 따라 axis의 속성으로 X, Y축에 0,1값을 할당..

'''
import numpy as np
ar = np.array([[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]])
print(ar)
## split(나눌배열, 나눌갯수, axis=0/1)
slice01 = np.split(ar,2,axis=0) ## x축 방향으로 2개 나눔

print(slice01)
print(slice01[0],slice01[1])

slice02= np.split(ar,2,axis=1) ## y축 방향으로 2개 나눔
print(slice02)
print(slice02[0],slice02[1])

## 2번째 앞까지 나누고 3번째 앞까지 나누고 나머지..
slice03 = np.split(ar,[2,3], axis=1)
print(slice03)
print(slice03[0])
print(slice03[1])
print(slice03[2])


