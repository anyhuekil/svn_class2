'''
Created on 2017. 7. 31.

@author: kitcoop

1. 파일로 xml데이터 읽기..
    1) 필요한 패키지 import
        import xml.etree.ElementTree as ET
    2) 계층형 객체로 변경..
        doc = ET.parse(파일이름)
    3) root를 지정
        계층형 객체.getroot()

2. url xml데이터 읽기
    1) url을 통해 요청객체 가져오기..
       url = "www.../localhost:8080/web...."
       request = urllib.request.Request( url )
    2) request를 통해 응답객체(결과처리) 가져오기..
       response = urllib.request.urlopen( request) 
    3) 계층형으로 변경..
        tree = ET.parse( response )
    4) root 접근하기..
        Root = tree.getroot()

'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

## url로 처리하기!!
#1. 패키지 호출..
import requests
import xml.etree.ElementTree as ET
import urllib.request

#2. 외부주소. .url
url ="https://apis.daum.net/local/v1/search/category.xml?apikey=465b06fae32febacbc59502598dd7685&code=AT4&location=37.514322572335935,127.06283102249932&radius=20000"
#3. response 가져오기( url -> request -> response)
request = urllib.request.Request(url)
response = urllib.request.urlopen(request)
#4. 계층형으로 변경..
tree = ET.parse(response)
#5. 최상위 객체 지정..
root = tree.getroot()
#6. 실제 데이터를 찾기 item
items = root.findall("item")

#7. 전체 데이터를 담기 위한 list 객체 선언.
ar =[]
##   배열.append(단위객체)
#8. 하나 데이터를 list의 속성값을 지정해서 할당.
##     list["속성"] = find("xml명")

for imsi in items:
    # 단위객체를 생성..
    item ={}
    item["title"]=imsi.find("title").text
    ## 단위객체의 데이터를 다 할당한 후,, 배열에 append()로 할당..
    item["latitude"]=imsi.find("latitude").text
    item["longitude"]=imsi.find("longitude").text 
    ar.append(item)
    
#9. 데이터 프레임 할당..
df = DataFrame(ar, columns=["title","latitude","longitude"])
print("프레임 확인\n", df)    
    
    
    
    














