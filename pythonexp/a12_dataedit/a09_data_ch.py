'''
Created on 2017. 8. 1.

@author: kitcoop

replace(매개변수1, 매개변수2)
1. 데이터의 값 변경..
2. 매개변수1의 데이터를 매개변수2로 대체
3. list일 때, 치환처리
4. dict (key,value) 치환가능

rename()
1. 인덱스, 컬럼 이름 변경
2. index  = 함수
   columns = 함수
   함수의 결과를 이용해서 변경..
3. dict(key, value) : key --> value 치환처리.

조건 처리..
1. DataFrame[컬럼=데이터값] = 대입데이터..
    해당 컬럼에 데이터값이 있으면 대입데이터로 할당..
2. Series의 데이터 순서 임의 변경
    numpy.random.permutation(갯수)    




'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

stock={'2017-08-01':[84900,1756,292000],
       '2017-03-21':[86100,np.nan,295000]}
df = pd.DataFrame(stock, index=['다음','넥슨','NC'])
print(df)
## index를 dict으로 변환 처리..
df = df.rename(index={'다음':'DAUM','넥슨':'NEXON'})
print(df.replace({np.nan:'-'}))

