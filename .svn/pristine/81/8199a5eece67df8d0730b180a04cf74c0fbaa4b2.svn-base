'''
Created on 2017. 7. 27.

@author: kitcoop
pandas에서 지원하는 결측치(null) 관련 함수들..
1. isnull(Series객체)  데이터가 없는 경우 True
2. isnotnull(Series 객체) 데이터가 있는 경우 True

pandas의 비교데이터 처리(결측치관련)
1. None : 데이터 없음 표시
2. 결측치가 있는 두개의 배열에서 연산을 처리할 때,
   + 인 경우에 한쪽이라도 None일 때는 NaN으로 처리..

'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

good1 = Series([4000,3500,None, 2000])
good1.index =["apple","mango","orange","kiwi"]
good2 = Series([3000,3000,3500,2000], 
               index=["apple","banana","mango","kiwi"])
### 결측치 확인 isnull
print(pd.isnull(good1))
### 연산 처리..
print(good1 + good2)







