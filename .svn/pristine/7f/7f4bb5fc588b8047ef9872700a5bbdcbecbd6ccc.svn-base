'''
Created on 2017. 8. 1.

@author: kitcoop

pivot(매개변수1, 매개변수2, 매개변수3, .)
1. DataFrame을 원하는 형식으로 그룹화하기 위한 함수..
2. 매개변수1 : 행의 인덱스로 사용할 컬럼 이름.
3. 매개변수2 : 열의 인덱스로 사용할 컬럼 이름.
4. 매개변수3 : 출력될 데이터로 사용할 컬럼 이름.

'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import pymysql, sys

con = pymysql.connect(host='localhost', port=3306, user='root',passwd='11111',
                      db='test', charset='utf8')
list=[]
try:
    cursor = con.cursor()
    cursor.execute("select date, name, price, count from stock")
    data = cursor.fetchall() 
    for imsi in data:
        list.append(imsi)
        print(imsi)
    
except:
    print("exception:",sys.exc_info())
finally:    
    con.close()

frame = DataFrame(list, columns=['date','name','price','count'])
print(frame)  
print("#"*20,"date,name을 기준 pivot")
print(frame.pivot('date','name'))  







