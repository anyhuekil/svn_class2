'''
Created on 2017. 7. 26.

@author: kitcoop

abs() : 절대값
sqrt() : 제곱근
square() : 원소의 제곱값
modf(): 정수와 소수점 구분 2개 배열 반환.
sign() : 열 원소 부호판별 함수 1(pos), 0(zero), -1(neg)

isnan() : Not a Number 포함 여부
isfinite() 유한수 포함 여부
isinf() 무한수 포함 여부
logical_not() : 조건 만족하지 않을 경우 true 반환..

'''

import numpy as np
b = np.array([10,1,2,3,4])
print("boolean값:",np.logical_not( b <=2 ))
print("해당값만 filter:",b[ np.logical_not( b <=2 ) ])

ar = np.array([1,2,3,4])
br = np.array([5,6,7,8])
print("연산값:",ar+br)
# 조건에 의한 filter
cond =[True,False,False,True]
## np.where(조건, 배열1(true일때),배열2(false일때))
print(np.where(cond,ar,br))




