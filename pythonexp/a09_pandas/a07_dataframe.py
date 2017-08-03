'''
Created on 2017. 7. 27.

@author: kitcoop
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

items ={
        "1":{"name":"apple","manufacture":"korea","price":1500},   
        "2":{"name":"수박","manufacture":"korea","price":15000},   
        "3":{"name":"참외","manufacture":"korea","price":1000},   
        "4":{"name":"바나나","manufacture":"phil","price":500},   
        "5":{"name":"레몬","manufacture":"korea","price":1500},   
        "6":{"name":"망고","manufacture":"korea","price":700}}
data = DataFrame(items)
print(data)
data01 = data.T
print(data01)
## 0~3행까지 추출..  [0:3]
print("0~3행까지 추출..  [0:3]")
print(data01[0:3])
## price값이 1000이 넘는지 확인..
print(data01["price"]>1000)
## price값이 1000이 넘는 데이터를 저장 및 확인.
data02 = data01[ data01['price'] > 1000 ]
print("1000이 넘는 데이터!!!")
print(data02)



