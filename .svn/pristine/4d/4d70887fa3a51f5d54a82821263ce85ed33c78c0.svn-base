'''
Created on 2017. 7. 31.
확인예제..
dept 테이블에 데이터를 입력하고,
해당 데이터를 DataFrame 형식으로 출력하세요..
@author: kitcoop
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import pymysql,sys

con = pymysql.connect(host="localhost",port=3306, db="test", user="root",
                      passwd="11111",charset="utf8")

list=[]
try:
    cursor = con.cursor()
    cursor.execute("select * from dept")
    data = cursor.fetchall()
    for dept in data:
        list.append(dept)    
    print("list###\n",list)    
    
except:
    print("예외발생,",sys.exc_info())
finally:
    con.close()

frame = DataFrame(list,columns=["부서번호","부서명","위치"])
print(frame)    
    