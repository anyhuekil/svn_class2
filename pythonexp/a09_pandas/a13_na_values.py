'''
Created on 2017. 7. 28.

@author: kitcoop
결측치 관련 데이터 처리..
1. isnull():NaN이나 None -->True ? False
2. notnull() <--> isnull()
3. dropna( how = @@@@ | thresh = @@@ )
     how = all  : 컬럼의 모든 값이 NaN인 경우만 제외.
     thresh = 정수값5,10  정수값 이상의 값을 소유한 컬럼 리턴.
4. fillna 
   결측치(NaN)를 소유한 데이터 값을 특정한 값으로 변경..
   method 매개변수로 이전/이후 값으로 채움..
   limt 채울 개수 지정..

'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
stocks ={
        '2017-02-19':{'다음':50300,'네이버':51100,'넥슨':46000,'NC':40000},
        '2017-02-22':{'다음':40000,'네이버':None,'넥슨':None,'NC':None},
        '2017-02-23':{'다음':50800,'네이버':53000,'넥슨':37000,'NC':None}
    }
data = DataFrame(stocks)
data = data.T
print(data)
print("제외시\n",data.dropna())
print("#"*20)
print(data.dropna(how="all"))
print("#"*20)
print(data.fillna(0))




