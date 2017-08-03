'''
Created on 2017. 7. 31.

@author: kitcoop

파이썬에서 삽입과 삭제 또는 갱신..
1. 연결객체인 pymysql.connect()에 있는 cursor() 메서드를 호출하여..
    sql(insert into 테이블명 values(##,##,##)) 명령으로 처리한다.
2. excute( sql 명령어 )
3. 연결 객체에 있는 commit() 호출로 반영, rollback() 호출하여 취소
   처리된다.
4. 예외 처리..
    try:
        연결및 sql 처리, commit()
    except:
        예외발생시 처리할 내용, rollback()
    finally:
        정상 처리 및 예외 발생 여부 상관 없이 처리
        con.close()
    
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import sys, pymysql

con = pymysql.connect(host='localhost', port=3306, user='root', 
                      passwd='11111', db = 'test', charset="utf8")    


try:
    cursor = con.cursor()
##  cursor.execute("insert into contact(name, phone) values('홍길동','01078889999') ") ## 삽입
##  cursor.execute("update contact set phone='01088889999' where name='홍길동'") ## 수정
    cursor.execute("delete from contact where name='홍길동' ") ##삭제
    con.commit()
    print("CRUD 성공")
except:
    print("예외발생!!",sys.exc_info())
    con.rollback()
finally:        
    con.close()




