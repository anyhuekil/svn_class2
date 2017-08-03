'''
Created on 2017. 7. 25.

@author: kitcoop
'''
import numpy as np
## from numpy import *
import datetime
li = range(1,1000000)
s = datetime.datetime.now()
print("리스트 작업 시간:",s)
for cnt in li:
    cnt = cnt*10
s = datetime.datetime.now()
print("리스트 종료시작",s)  
## ndarray로 처리
ar = np.arange(1, 1000000)
s = datetime.datetime.now()
print("ndarray 작업시작 시간",s)
ar = ar*10
s = datetime.datetime.now()
print("ndarray작업 종료시간:",s)

  