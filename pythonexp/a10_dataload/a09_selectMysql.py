'''
Created on 2017. 7. 31.

@author: kitcoop
파이선에서 데이터 검색..
1. 연결객체의 cursor()메소드 호출, sql실행 객체를 가져옮
2. execute( sql문장 )
3. cursor 객체를 가지고, fetchone():첫번째데이터/fetchall():전체데이터 
   메소드를 호출하면,듀플(key, value) 결과가 리턴
4. list으로 전환.
    1) list 타입으로 선언
        list =[]
    2) 각데이터를 append()를 활용하여 할당..    
        for imsi in data:
            list.append(imsi)
5. DataFrame으로 전환.  
    3) list를 첫번째 parameter할당..
        DataFrame( list
    4) columms=[컬럼명1,컬럼명2,컬럼명3]
        DataFrame( list, columns=["번호", "이름","전화번호"])
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import sys, pymysql
con = pymysql.connect(host='localhost', port=3306, user='root', 
                      passwd = '11111', db='test', charset="utf8")
list =[]
try:
    cursor = con.cursor()
    cursor.execute("select * from contact")
#    data = cursor.fetchone() ## 데이터가 튜플형태로 한개 데이터 return
    data = cursor.fetchall() ## 데이터가 튜플형태로 다중의 데이터 return
    for imsi in data:
        print(imsi)
        list.append(imsi)
        
    print("#"*10,"리스트데이터\n",list)    
        
except:
    print('exception', sys.exc_info())
finally:    
    con.close()

frame = DataFrame(list, columns=["번호","이름","전화번호"])
print("데이터 프레임\n",frame)

