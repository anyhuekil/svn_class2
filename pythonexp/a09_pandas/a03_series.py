'''
Created on 2017. 7. 27.

@author: kitcoop
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

good = Series([4000,3000,3500,2000])
index =["apple","orange","kiwi","banana"]
good2 = good[ good>3000 ]
print(good2)
good3 = good + 100
print(good3)
buyall = np.sum(good)
print("총계:",buyall)

## Series만들기2
## 1. keys 데이터 배열형식..
## 2. values 데이터 배열형식...
## 3. dic형태로 설정..  dic(zip(keys, values)
## 4. Series에 할당   Series(dic)
keys=["짜장면","도시락","한식","일식"]
values =(4000, 1000, 5000, 7000)
dic = dict(zip(keys,values))
foods = Series(dic)
print(foods) 






