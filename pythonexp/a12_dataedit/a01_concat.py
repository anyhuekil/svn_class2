'''
Created on 2017. 7. 31.

@author: kitcoop

concat()
    1. 축(x,y)을 이용해서 데이터를 붙이는 함수
        세로로 데이터를 이어주는 경우, 1차 -->2차원( axis=1 )
        axis=1 옵션은 컬럼 단위로 이어 붙이는 DataFrame을 만들어 준다.
    2. join옵션 : 두개의 데이터를 어떻게 연결할 것인가?
        1) inner : 양쪽에 존재하는 인덱스가 동일할 경우만 만들어 준다.
        2) outer : 한쪽에만 있더라도 데이터를 만들어줌.
        3) join_axes : 참여한 인덱스를 직접 설정


'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
#1. 대상이 되는 2개의 1차원 배열..
s1 = Series([84900,81800,1756], index = ['다음','네이버','넥슨'])
s2 = Series([86100,87100,1776,295000], index = ['다음','네이버','넥슨','NC'])
print(s1)
print(s2)
#2. 연결 default concat()
print("#######연결한 배열객체\n",pd.concat([s1,s2]))

#3. 연결 axis=1 열방향으로 연결..
print("#######연결한 배열객체(열방향)\n",pd.concat([s1,s2], axis=1))
#4. join_axes 이용하여 join에 참여할 인덱스를 직접 설정..:순서변경..
#    keys를 이용하여 컬럼명을 붙이는 기능.
print("###### join_axes와 keys 활용\n", pd.concat([s1,s2], axis=1,
                                               join_axes=[['다음','네이버','넥슨','NC']],
                                               keys=['2017-07-31','2017-08-01']))



