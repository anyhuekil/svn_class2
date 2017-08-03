'''
Created on 2017. 7. 27.

@author: kitcoop
'''
from pandas import Series, DataFrame
import numpy as np

phoneinfo = Series(["010-7777-8888","010-7777-8889","010-8888-8888"])
phoneinfo.index=["홍길동","김길동","신길동"]
print(phoneinfo['김길동'])
print("이름\t전화번호")
idx=0
for info in phoneinfo:
    print(phoneinfo.index[idx],"\t",info)
    idx=idx+1
