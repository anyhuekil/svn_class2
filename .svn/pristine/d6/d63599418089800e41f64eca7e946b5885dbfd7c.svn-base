'''
Created on 2017. 7. 26.

@author: kitcoop

집합 관련 함수
unique() : 중복제거
intersect1d() 교집합
union1d() 합집합
in1d() 데이터의 존재 여부 boolean
setdiff1d() 차집합
setxor1d() 한쪽에만 있는 데이터 집합
'''
import numpy as np
ar = np.array([90,40,30,78,30])
print( "중복제거(unique):",np.unique(ar) )
br = np.array([30,45,76,90])
print("중복:", np.intersect1d(ar,br))
print("합집합:", np.union1d(ar, br))
print("데이터존재여부:", np.in1d(ar, br))
print("차집합:", np.setdiff1d(ar, br))
print("한쪽에만 있는 데이터:", np.setxor1d(ar, br))