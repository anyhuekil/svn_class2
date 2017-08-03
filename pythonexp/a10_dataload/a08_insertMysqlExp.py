'''
Created on 2017. 7. 31.

@author: kitcoop
    
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import sys, pymysql

con = pymysql.connect(host='localhost', port=3306, user='root', 
                      passwd='11111', db = 'test', charset="utf8")  

try:
    cursor = con.cursor()
    cursor.execute("insert into dept values(10, '인사과','서울강남') ")
    cursor.execute("insert into dept values(20, '총무','서울강남') ")
    cursor.execute("insert into dept values(30, 'it사업부','서울강남') ")
    con.commit()
    print("삽입 성공")
except:
    
    print("예외발생!!",sys.exc_info())
    con.rollback()
finally:        
    con.close()




