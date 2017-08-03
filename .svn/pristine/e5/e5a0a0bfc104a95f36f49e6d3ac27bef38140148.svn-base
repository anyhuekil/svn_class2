'''
Created on 2017. 7. 31.

@author: kitcoop
JSON
    1. 속성-값 쌍으로 이루어진 데이터 오브젝트 전달을 위한 
        개방형 표준 표맷
        ex) {'name':'홍길동','age':25}
    2. 인터넷에서 자료를 주고 받을 때, 표현방법 중 하나
    3. 자바스크립트 구문 형식의 언어 독립형 데이터 포맷
    4. 언어나 플랫폼(OS) 독립적으로, 쉽게 이용
    5. 파이썬에선 json.loads("json형식의 문자열의 파일 or url")
        파싱된 결과 리턴
    6. 표현방법
        배열: [], 객체{속성:값, 속성:값}, 배열+객체:[{속성:값},{속성:값}]


'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
#1. 패키지 import
import json
import requests
#2. url로 get방식 호출..
url = "https://apis.daum.net/local/v1/search/category.json?apikey=465b06fae32febacbc59502598dd7685&code=AT4&location=37.514322572335935,127.06283102249932&radius=20000"
data = requests.get(url)
print(data)
print(data.text)
#3. json으로 데이터 파일 loading
result = json.loads(data.text)
#4. 결과에 대한 최상위값 가져옮  
channel = result['channel']
#5. 핵심 데이터 key값 가져오기..
item = channel['item']

print("중요데이터\n",item)
#6. 데이터 프레임에 처리
#  DataFrame(핵심데이터, columns=[컬럼명지정])
df = DataFrame(item, columns=['title','phone','address'])
print("데이터프레임\n",df)





