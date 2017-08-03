'''
Created on 2017. 7. 27.

@author: kitcoop

DataFrame : 여러 개의 컬럼으로 구성된 2차원 형태의 자료 구조

1. 디셔너리 배열 유사
2. 디셔너리 를 이용해서 생성..
    {키:value}
    {컬럼명1:[1,2,3,4,5],컬럼명2:["홍길동","김길동","신길동","오길동","마길동"]}
3. 키는 정렬되어 배치
4. 데이터 접근..
    1) 프레임셋명["컬럼명"] col단위로 접근..
    2) 프레임셋명[index번호..] 행단위로 접근
5. 입력 가능 데이터
    1) 2차원 ndarray
    2) 리스트, 튜플, dict, Series
    3) dict, Series의 list
    4) 리스트, 튜플의 리스트


'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
## {key:value}
items ={"code":[1,2,3,4,5,6],
        "name":["apple","watermelon","oriental melon","banana","lemon","mango"],
        "manufacture":["kor","kor","kor","phil","kor","kor"],
        "price":[1500,15000,1000,4000,1500,1000] }
data = DataFrame(items)
print(data)
## 컬럼단위로 데이터 가져오기..
print(data["name"])
## 행단위 데이터?
print(data.ix[0])
##컬럼명의 name의 첫번째 데이터 가져오기..
print(data["name"][0])

data01 = data.T ## 행-->열, 열-->행
print("행열 변경",data01)
data02 = data.reindex([1,2,3,4,5,7])
print("재 인덱싱\n",data02)
## 7번 데이터 NaN 으로 처리
data03 = data.reindex([1,2,3,4,5,7], fill_value=0)
print("재 인덱싱\n",data03)
data04 = data.reindex([1,2,3,4,5,7], method="ffill",limit=2)
print("재 인덱싱\n",data04)

data05=data.T
print(data05.index)
data06=data05.drop("price") ## 해당 index값을 drop함께 처리한후, 새로운 data06에 할당.
print(data06)
print("삭제전:\n",data)
data07=data.drop([1,3])
print("삭제후:")
print(data07)









''' 
DataFrame 확인예제
프로야구 순위..
순위  팀명  승 무 패  승률

1. 두번째 팀의 이름
2. 승률 리스트.
'''


















