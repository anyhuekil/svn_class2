'''
Created on 2017. 7. 26.

@author: kitcoop

prod() : 각 데이터를 *(곱셉) 처리
sum() : 합산처리.
'''
import numpy as np
from dask.array.chunk import keepdims_wrapper
b = np.array([1,2,3,4])
print(np.prod(b))  # 1*2*3*4
print(np.sum(b))  #1+2+3+4
## keepdims : 배열구조를 유지하여 결과값을 할당..
print("keepdims:",np.sum(b, keepdims=True))

c = np.array([[1,2],[3,4]])
print(c)
## axis = 0 이면 열끼리 연산, 1이면 행끼리 연산
print(np.prod(c, axis=0)) ## 1*3,  2*4
print(np.sum(c, axis=0)) ## 1+3,  2+4

print(np.prod(c, axis=1)) ## 1*2,  3*4
print(np.sum(c, axis=1)) ## 1+2,  3+4

## 







