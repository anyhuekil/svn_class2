'''
Created on 2017. 7. 28.

@author: kitcoop

정렬(sort) 순위(rank)
1. 정렬
    1) sort_index() 인덱가 정렬처리.. axis =1 대입시 컬럼의 이름을 정렬
    2) 기본은 오름차순 정렬처리
       내림차순 정렬시, ascending = False
    3) Series객체.. sort_values() 통해서 정렬처리..
    4) 특정 컬럼 기준으로 정렬 ==> 
         sort_values( by.컬럼이름, 컬럼리스트) 메서드 호출..  
2. 순위
    1) rank() : 오름차순 순위를 설정
    2) ascending = False 내림차순 
    3) rank( axis = 1) : 행단위 순위..
    
     


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
## 정렬은 sort_values() 함수를 통해서 처리할 수 있다.
## 기준이 되는컬럼과 순서 by= ["우선1열","우선2열"]
## 컬럼이 정해지면 오름차순과 내림차순 옵션 ascending=[False일때 내림차수,..]
print(data.sort_values(ascending=[False,False], by=["count","price"]))
