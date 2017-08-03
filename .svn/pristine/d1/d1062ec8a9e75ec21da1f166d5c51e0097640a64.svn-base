'''
Created on 2017. 7. 28.

@author: kitcoop

DataFrame 함수 적용..
1. apply(정의된 함수) 형식으로 행이나 열 단위로 적용.
    def call():
    데이터프레임이름.apply(call)
2. apply(매개변수1, 매개변수2)
   매개변수1 : 함수선언
   매개변수2 : axis default-컬럼단위함수 적용 1 - 행 단위 함수 적용.
3. 데이터의 각각의 내용을 적용 - applymap이용
4. Series에 적용할 때, map 이용       

'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

def func(x):
    return x.sum()
f = lambda x:x.prod()
def func2(x):
    return x+10


items = {'사과':{'count':10, 'price':1500},
        '바나나':{'count':5, 'price':15000},
        '멜론':{'count':7, 'price':100},
        '키위':{'count':20, 'price':500},
        '망고':{'count':30, 'price':1500},
        '오렌지':{'count':4, 'price':700}}
data = DataFrame(items)
data = data.T
print(data)
## 프레임이름.apply(함수명)
print(data.apply(func))
print("#"*15)
print(data.apply(f, axis=1))
print("#"*15)
## 프레임이름.applymap(함수명) : 데이터 개별적으로 함수적용..
print(data.applymap(func2))
## count컬럼에만 10을 더하는 처리..
## 프레임이름["컬럼명"].map(함수명)
print("#"*15)
print(data["count"].map(func2))




