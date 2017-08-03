'''
Created on 2017. 7. 27.

@author: kitcoop
pandas
 효과적인 데이터 분석을 위한 고수준의 [자료]와 데이터 분석 [도구] 제공
 1차원 데이터 : Series를 통해 효과적으로 처리
 2차원 데이터 : DataFrame 
 
Series : 리스트 형태의 구조..
1) 정수 인덱스 + 값
2) values : 데이터 값이 리턴.
3) index : 데이터 값에 매핑된 index
4) 데이터 접근 : 변수명[index] 
'''
from pandas import Series, DataFrame
import numpy as np

price = Series([4000,3000,3500,2000])
print(price)
print("index\n", price.index)
print("values\n", price.values)
print("==========================")
good =Series([4000,3000,3500,2000])
good.index = ["apple","mellon","orange","kiwi"]
print(good)
print("index 0~~",good[0])
print("index 값접근",good['apple'])

