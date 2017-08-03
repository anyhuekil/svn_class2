'''
Created on 2017. 8. 1.

@author: kitcoop

# merge()
1. DataFrame이나 Series
    1) 첫번째, 두번째 입력 데이터를 합침 
        ex) merge( df1, df2 )
2. 하나 이상의 key
    - 컬럼의 데이터가 동일한 key
    
3. 데이터베이스 join연산 유사
    - key나 on옵션에 명시된 컬럼 이름 기준으로 join 
    
4. on옵션에 컬럼 이름을 명시
    - join 기준 컬럼
    ex) on = "name" : 동일한 데이터가 있는 기준 컬럼(name)으로 조인

5. 양쪽 데이터가 다른 경우 left_on/right_on 프레임의 컬럼 이름 대입
    - 데이터 베이스의 outer조인과 유사.
    - 컬럼명이 다른 경우 alias이름 활용



'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

## 양쪽 데이터의 join의 기준이 되는 데이터가 필요로 한다.
stock1 ={'name':['다음','네이버','넥슨','NC'],
         '2017-07-28':[84900,818000,1756,292000],
         '2017-07-31':[86100,871000,1776,295000] }
stock2 ={'name':['다음','네이버','넥슨','NC'],
         '2017-08-01':[90800,766000,1695,366500],
         '2017-08-02':[90600,806000,1703,358500] }
# DataFrame 만들기 columns으로 해당 데이터의 타이틀이 되는 데이터 설정..
df1 = pd.DataFrame(stock1, columns=['name','2017-07-28','2017-07-31'])
print(df1)
df2 = pd.DataFrame(stock2, columns=['name','2017-08-01','2017-08-02'])
print(df2)
## 데이터1.merge(데이터2)
result = df1.merge(df2)
print("="*20,"머지처리")
print(result)







