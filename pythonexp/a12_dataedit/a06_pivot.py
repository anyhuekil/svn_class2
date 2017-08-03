'''
Created on 2017. 8. 1.

@author: kitcoop

stack()
1. DataFrame에서 컬럼을 하위 인텍스로 해서 Series를 생성
2. NaN 데이터 제외
3. dropna에 False 대입 

unstack()
1. Series(계층적인덱스) ==> DataFrame(하위레벨 인덱스)  
2. DataFrame인 경우는 컬럼을 상위 인덱스로 하는 Series 객체
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

stock1={'2017-08-01':[84900,1756,292000],
        '2017-08-02':[86100,np.nan,295000]}
df1 = pd.DataFrame(stock1, index=['다음','넥슨','NC'])
print(df1)
print("="*30,"stack()")
print(df1.stack())
print("="*30,"unstack()")
print(df1.unstack())

