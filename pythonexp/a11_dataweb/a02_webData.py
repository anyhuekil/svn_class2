'''
Created on 2017. 7. 31.

@author: kitcoop

HTML 데이터 가져오기..
1. 태그(tag)형식을 트리형식으로 변환
    lxml.html.parse( io.StringIO(문자열) )
2. 핵심되는 데이터의 root 객체 가져오기.. : 트리객체.getRoot()    
3. 태그에 해당하는 데이터를 Element의 list로 가져오기..
   루트객체.findall(".//태그명")
   ex) tables[0].findall(".//th") 타이틀..
       tables[0].findall(".//td") 데이터 내용..
4. 데이터 찾기..
   루트객체.find("from") : 루트객체 태그 하위에 from과 일차하는 첫 번째
                          데이터 return, 없으면 None
   특정한 데이터를 첫번째 데이터를 찾고 싶다.. ==? 루트객체.findtext("from")
     ==> 첫번째 텍스트의 값을 return한다.
5. 속성찾기..
    Elements의 get("속성") : 속성값 가져오기.. <td class="###">
6. 태그의 내용 가져오기..
    Elements의 text_content() 

데이터 가져오기 실습..
http://finance.daum.net/quote/kospi_yyyymmdd.daum


    
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import requests
from lxml.html import parse ## 태그형식을 계층형식으로 변환
from io import StringIO

## 사용할 주소..
url = "http://finance.daum.net/quote/kospi_yyyymmdd.daum"
## 응답 받을 response 객체 만들기..
data = requests.get(url)
## tag를 계층형으로 변경처리..
doc = parse(StringIO(data.text))
## 최상의 root()를 받기..
root = doc.getroot()
## 핵심 데이터가 table 안에 있으므로, table태그 접근..
tables = root.findall(".//table")
titles = tables[0].findall(".//th") ## 컬럼으로 쓸 데이터..

cols=[] ## 컬럼을 list형으로 담기..
for title in titles:
    print(title.text_content())
    cols.append(title.text_content())
    
contents = tables[0].findall(".//td") ## 실제 데이터내용 담을 부분..
values=[] ## 내용을 담을 list

for val in contents:
    if val.text_content() !="":
        values.append(val.text_content())
        print(val.text_content())   
         
## 나열된 데이터를 9개 단위 변경
## 1) np.array() 처리
## 2) reshape(행, 열) 로 변경..

ar = np.array(values)
ar = ar.reshape(10, 9)
print("행열 2차원배열 \n",ar)
## 데이터, 컬럼..
df = DataFrame(ar, columns = cols)
print("데이터 프레임 완성:\n",df)

'''
확인예제..
확인예제
http://localhost:6080/springweb/boardList.do?method=list

웹 화면의 내용을  데이터 프레임으로 전환하여 출력하세요.
'''















