'''
Created on 2017. 7. 31.

@author: kitcoop

웹에서 데이터 로딩 방식..(get)
1. params01 ={'param1':'value1', 'param2','value2'}
2. res = requests.get( URL, params=params01 )
        http://localhost:8080/web?param1=value1&param2=value2

'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import requests

##url = "http://www.naver.com"
url = "http://localhost:6080/springweb/start.do"
data = requests.get(url)
print(data)
print(data.text)

