'''
Created on 2017. 8. 1.

@author: kitcoop
데이터 가공
1. duplicated()
    데이터의 중복을 Boolean Series 객체로 리턴.
2. drop_duplicates()
    1) 매개변수X : 모든 컬럼의 값이 동일한 경우 제거
    2) 매개변수(컬럼의 리스트) : 해당 컬럼의 값이 일치하는 데이터 제거,
        중복된 데이터는 첫번째 값을 보존
    3) keep 옵션 last를 설정하면 마지막 데이터의 값을 보존
3. map()
    함수 이름이나 dict를 대입해서 함수를 수행한 결과나 매핑이 되는 dict값
    리턴 
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

def func(s):
    if len(s) < 5:
        return s
    else:
        return s[0:3]+'..'
    
loc ={'한국':'korea','중국':'china','일본':'japan'}

df = DataFrame([['안녕하세요','니하오','곤니찌와','안녕하세요'],
                ['한국','중국','일본','한국']])
df = df.T
print(df)
## 컬럼 매핑..
df.columns=['인사말','국가']
df = df.drop_duplicates()
print("#"*20,"중복제거후,,,")
print(df)
## 함수가 적용된 데이터 처리.. map(함수명), map(dic)
df['nation']=df['국가'].map(loc)
print("#"*20,"dict 적용 후,")
print(df)
print("#"*20,"함수 적용 후")
df['인사말']=df['인사말'].map(func)
print(df)





