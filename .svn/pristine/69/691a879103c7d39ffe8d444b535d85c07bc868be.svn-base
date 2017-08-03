'''
Created on 2017. 7. 28.
csv 파일 저장.
1. Series, DataFrame객체.. to_csv()로 파일 경로지정. 데이터 파일로 저장.
2. sep : 구분자 설정.
3. na_rep : NaN값을 원하는 형식으로 출력..
4. index, header값을 False대입해서.. 인덱스와 컬럼이름이 출력되지 않게 처리..
5. cols 필요한 컬럼의 이름 지정..
@author: kitcoop
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

items = {'사과':{'count':10, 'price':1500},
        '바나나':{'count':5, 'price':15000},
        '멜론':{'count':7, 'price':100},
        '키위':{'count':20, 'price':500},
        '망고':{'count':20, 'price':1500},
        '오렌지':{'count':4, 'price':700}}
data = DataFrame(items)
data = data.T
print(data)
data.to_csv("z01_fruit.csv", index=False, header=False)
##data.to_csv("z01_fruit2.csv")



