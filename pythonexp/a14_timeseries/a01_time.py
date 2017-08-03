'''
Created on 2017. 8. 2.

@author: kitcoop

시계열 데이터?
 금융, 경제, 생태학, 신경과학, 물리학 등 여러분야에서 사용되는 구조화된 데이터..
 시간상의 여러 지점을 [관측]하거나 [측정]할 수 있는 모든 것을 말한다.
 고정 빈도로 표현, 시간마다(15초,5분. 한달) 특정 규칙에 따라 일괄적인 간격
 불규칙적이고 고정된 빈도에 대한 시계열처리.
주요 데이터 형태
    1. 시간 내에서 특정 순간의 타임스탬프
    2. 2007년 1월 2010년 전체에 고정된 기간
    3. 시간의 시작과 끝
    
라이브러리.- datetime.datetime
    1) now() : 현재날짜/시간
    2) year/month/day
    3) 날짜 지정..: datatime(yyyy,mm,dd,hh,mi,ss)
    4) datatime 패키지의 주요 자료형
       date : 그레고리언 달력을 사용 날짜(년,월,일)
       time : 시간, 분, 초, 마이크로 초 단위
       datetime :날짜/시간
       timedelta : 두개의 datatime의 시간의 차이.(일,초,마이크로초)
 

'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
from datetime import datetime, timedelta

## 현재 날짜와 시간..
now = datetime.now()
print(now)
## 연도, 달, 일
print(now.year,now.month,now.day)

## 시간  차이..
delta = datetime(2017,8,2) - datetime(2017,8,1)
print("시간차이:",delta) 
delta = now - datetime(2017,8,1)
print("시간차이:",delta) 
## 차이의 날짜와 시간과 ..
print("날짜차이", delta.days)
print("초차이", delta.seconds)

start = datetime(2017,8,1)
## 해당에서 + timedelta(날짜수)
print(start+timedelta(12))

## 날짜 문자열 형식 처리
print( str(now) )
## 형식..  strftime('%Y-%m-%d')
print( now.strftime('%Y/%m/%d'))

## 특정한 알려진 형식의 날짜로 파싱 처리하는 내용..
## parse
## from dateutil.parse import parse

## 시간 처리..
import time
time.sleep(10)
print("1970년1월1일 이후 누적시간:",time.time())
print("UTC시간:", time.gmtime())
print("현재 지방시:", time.localtime())






