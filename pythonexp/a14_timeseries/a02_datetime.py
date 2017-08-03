'''
Created on 2017. 8. 2.

@author: kitcoop
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import datetime,time
dt = datetime.datetime.now()
print("날짜:",dt.date(),"\t시간:",dt.time())
d = datetime.date(2017,9,7)
print("미래의 날짜:",d)
## 시간 설정..
t = datetime.time(18,30,1)
print("시간:",t)
##  시간과 날짜 혼합..
print(datetime.datetime.combine(d,t))

print("start!!!")
print(datetime.datetime.now())
## time.sleep(초단위) : 해당 시간 동안 처리를 중지
time.sleep(10)
print("finish!!!")
print(datetime.datetime.now())

## parse() : 문자열 ==> datetime 형식으로 변경..
from dateutil.parser import parse
print(parse('2017-08-02'))



