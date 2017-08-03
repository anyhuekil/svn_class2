'''
Created on 2017. 7. 28.

@author: kitcoop

통계 메서드
1. axis 계산방향  : 0 - 행단위, 1 - 열단위
2. skipna  NaN 값이 있는 경우 제외여부T/F
3. count, min, max, sum, mean, median, var, std
4. argmin(최소값 위치), argmax, idxmin(최소값 색인), idxmax, quantile
5. descibe : 통계 내용 요약.
6. cumsum, cumin, cummax, comprod
7. diff :산술차..
8. unique : 동일한 값을 제외한 배열 리턴 - Series만 사용.
9. value_counts() : 도수 리턴 내림차순 정렬 sort False 시 정렬하지 않음.. 
   - Series에만 사용..


'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

items = {'사과':{'count':10, 'price':1500},
        '바나나':{'count':5, 'price':15000},
        '멜론':{'count':7, 'price':100},
        '키위':{'count':20, 'price':500},
        '망고':{'count':30, 'price':1500},
        '오렌지':{'count':4, 'price':700}}
data = DataFrame(items)
data = data.T
print(data)
print(data.describe())

stocks ={
        '2017-02-19':{'다음':50300,'네이버':51100},
        '2017-02-22':{'다음':50300,'네이버':50800},
        '2017-02-23':{'다음':50800,'네이버':53000},
    }
data = DataFrame(stocks)
data = data.T
print(data)
print("#"*15)
print(data.diff())





