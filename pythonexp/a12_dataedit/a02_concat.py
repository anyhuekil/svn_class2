'''
Created on 2017. 7. 31.

@author: kitcoop

1. 초기에 데이터를 컬럼을 매핑처리..
    변수01 ={'컬럼명':[...,....,...]}
2. 결측치(NaN)값에 대한 처리.. 
    .fillna("결측치NaN발생시, 대체할 문자열")
3. 데이터 프레임간 연결    
    pd.concat([프레임1, 프레임2], axis=1)
4. join을 통한 데이터 처리..
    inner : 공통 부분처리..
    
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
#1.       날짜별 = [다음, 네이버, 넥슨, NC]
stock1 ={'2017-07-28':[84900,818000,1756,292000],
         '2017-07-31':[86100,871000,1776,295000] }
stock2 ={'2017-08-01':[90800,766000,1695],
         '2017-08-02':[90600,806000,1703] }
#2. 데이터프레임 만들기,상단 columns = "데이터에 있는 데이터 매핑" 
#                      왼쪽 index="각회사명"
df1 = pd.DataFrame(stock1, columns=["2017-07-28","2017-07-31"], 
                            index=["다음","네이버","넥슨","NC"])
df2 = pd.DataFrame(stock2, columns=["2017-08-01","2017-08-02"], 
                            index=["다음","네이버","넥슨"])
#3. concat()를 이용한 데이터 연결 2차원  axis=1
#   NaN에 대한 처리--> fillna("-")
print("최종 결과 처리(프레임+프레임)\n",pd.concat([df1,df2], axis=1).fillna('-'))
print("최종 결과 처리(join-inner)\n",pd.concat([df1,df2], axis=1, join="inner"))
#4. join_axes=[지정된 index] 해당 인덱스로 join 처리..
print("최종 결과 처리(join_axes)-df1.index\n",
        pd.concat([df1,df2], axis=1, join_axes=[df1.index]).fillna("-"))
print("최종 결과 처리(join_axes)-df2.index\n",
        pd.concat([df1,df2], axis=1, join_axes=[df2.index]))






