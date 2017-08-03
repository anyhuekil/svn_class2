'''
Created on 2017. 7. 31.

@author: kitcoop

1. 초기에 데이터를 컬럼을 매핑처리..
    변수01 ={'컬럼명':[...,....,...]}
2. 결측치(NaN)값에 대한 처리.. 
    .fillna("결측치NaN발생시, 대체할 문자열")
3. 데이터 프레임간 연결    
    pd.concat([프레임1, 프레임2], axis=1)
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
korea ={'프로그래밍명':['아버지가이상해','미운우리새끼','당신은너무합니다'],
         '채널':['KBS2','SBS','MBC'], 
         '시청률':[31.0,16.1,15.2]}
tnms ={'프로그래밍명':['아버지가이상해','미운우리새끼'],
         '채널':['KBS2','SBS'], 
         '시청률':[32.4,15.9]}

df1 = pd.DataFrame(korea, columns=["프로그래밍명","채널","시청률"], 
                            index=np.arange(1,4))
df2 = pd.DataFrame(tnms, columns=["프로그래밍명","채널","시청률"], 
                            index=np.arange(1,3))
print("최종 결과 처리\n",pd.concat([df1,df2], axis=1).fillna('-'))




