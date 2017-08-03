'''
Created on 2017. 8. 2.

@author: kitcoop

날짜데이터..
1. 기본적인 시계열 종류
    1) 파일썬 문자열.
    2) Series : datetime객체/타임스탬프를 index
    3) indexing은 Series와 동일
    4) 날짜 --> 문자열, 연도나 월까지만도가능
    5) 스라이싱 은 Series와 동일
    6) truncate() : before, after
    7) 날짜가 중복된 경우, 기술 통계 수행.. groupby대입.
    



'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
from datetime import datetime
## date_array=["2017/8/9","2017/8/16","2017/8/23","2017/8/30","2017/9/6"]
dates =[datetime(2017,8,2),datetime(2017,8,9),datetime(2017,8,16),
        datetime(2017,8,23),datetime(2017,8,30),datetime(2017,9,6)]
ts = Series(np.random.randn(6),index=dates)
print(ts)
## 3번째 index로 데이터 출력..
print("3번째 데이터 출력",ts[ts.index[2]])
## 문자열.. 2017/8/9
print("문자열로 index된 내용 출력1", ts['2017/8/9'])
print("문자열로 index된 내용 출력2", ts['20170809'])
print("월단위문자열로 index된 내용 출력", ts['2017-8'])
## slicing 처리..
print("slicing 처리,",ts['2017-08-16':'2017-08-30'])
## truncate : before after
##  해당 데이터는 잘라서 보여줌..
print("truncate 처리1:\n",ts.truncate(before='2017-08-16'))
print("truncate 처리2\n",ts.truncate(after='2017-08-16'))








