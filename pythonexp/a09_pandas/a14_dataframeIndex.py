'''
Created on 2017. 7. 28.

@author: kitcoop

계층적 색인..
1. index나 컬럼이 2 level이상으로 이루어진 경우..(2차원 배열..)
2. 그룹화 연산에 유용.
3. 집계함수 level 인덱스나 컬럼 이름 대입,
   axis 축방향 대입 설정..
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

li=[50300, 51100, 32000, 4000, 50300, 50800, 35000,6500, 50800,
    50700,37000,8000,51800,50500,37500,8200]
ar = np.array(li)
print(ar)
ar = ar.reshape(4,4)
print(ar)
## index : 인덱스에 합당 데이터 넣기..
## columns : 컬럼 내용을 선언 할 수 있다..
##          2차원을 2차원 배열로 선언..
stocks = DataFrame(ar, index =["다음","네이버","넥슨","NC"], 
                   columns =[["7월","7월","8월","8월"],
                             ["28일","31일","1일","2일"]])
print(stocks)
print("#"*30)
# 7월의 데이터 가져오기..
print(stocks["7월"])
print("#"*30)
# 7월의 31일 데이터 가져오기..
print(stocks["7월"]["31일"])
# 행데이터 가져오기.... ix["index로 지정한 이름"]
print("#"*30)
print(stocks.ix["다음"])




