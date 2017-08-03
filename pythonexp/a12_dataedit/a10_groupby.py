'''
Created on 2017. 8. 1.

@author: kitcoop

Groupby

1. DataFrame이나 Series에서 데이터를 그룹
2. groupby(키) : 컬럼단위로 묶기
3. groupby : 메소드  ==> 새로운 인스턴스 생성..
4. DataFrameGroupBy 객체의 SeriesGroupBy 함수..
    1) count : NA제외 개수
    2) min, max : 최소값/최대값
    3) sum: 합계(NA제외)
    4) mean:평균(NA제외)
    5) median:중간값..
    6) var, std:분산과 표준편차
    7) prod : 누적곱셈(NA제외)
    8) first,last : 첫번째, 마지막값
    9) describe:요약
    
apply(함수명)
내부함수, 사용자정의 함수 모든 원소에 계산처..
    
    


'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

df = DataFrame({
        'key1':['a','a','b','b','a'],
        'key2':['one','two','one','two','one'],
        'data1':np.random.randn(5),
        'data2':np.random.randn(5)})
print(df)
## group을 설정.. groupby( 지정된 열의 데이터 )
grouped = df['data1'].groupby(df['key1'])
## 그룹만 처리하고 실제 그룹에 해당하는 함수가 적용되지 않음..
print(grouped)
## mean()
print(grouped.mean())
## 데이터별 함수 적용 내용 처리..
means = df['data1'].groupby([df['key1'], df['key2']]).mean()
print(means)

## 사전(dict)과 Series 묶기
people = DataFrame(np.random.randn(5,5), columns=['a','b','c','d','e'],
                   index =['joe','Steve','Wes','Jim','Travis'])
print(people)
## 지정된 데이터에 NA값을 추가..
people.ix[2:3,['b','c']]=np.nan
print("결측치 처리후 데이터\n",people)
## dict로 그룹을 설정..
mapping ={'a':'red','b':'red','c':'blue','d':'blue','e':'red','f':'orange'}
by_column = people.groupby(mapping, axis=1)
print(by_column.sum())




