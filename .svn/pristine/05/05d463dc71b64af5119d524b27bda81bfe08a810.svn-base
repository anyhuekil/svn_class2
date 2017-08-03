'''
Created on 2017. 7. 28.

@author: kitcoop

### 영업맨들의 실적..
이름    경비  수입   
홍길동  100   1000
김길동  1000   500
신길동  50     50
items으로 만들기..
프레임셑으로 처리..

함수 수입 경비 합산액.. 수입-경비
1. 위 함수 적용 처리.
2. 행단위로 나타내기.
3. 경비와 수입액이 환율이 적용되어
    * 10  (엔/달러화 적용시 금액)
4. 수입액에 20% 상승했다. 결과 출력.
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

tot = lambda x:x.sum()
trans = lambda x:x*10
upincome= lambda x:(x*0.2)+x
data01 ={
        '홍길동':{'outcome':-100,'income':1000},
        '신영업':{'outcome':-1000,'income':500},
        '모길동':{'outcome':-200,'income':300},
        '오영업':{'outcome':-400,'income':200},
        '하길동':{'outcome':-700,'income':2000},
    }
df01 = DataFrame(data01)
df01 = df01.T
print("#"*20,"초기")
print(df01)
print("#"*20,"총액")
print(df01.apply(tot,axis=1))
print("#"*20,"환율적용")
print(df01.apply(trans,axis=1))
print("#"*20,"수입20%상승")
print(df01["income"].map(upincome))




