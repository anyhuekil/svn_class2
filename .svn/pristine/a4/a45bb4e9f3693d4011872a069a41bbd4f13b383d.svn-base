'''
Created on 2017. 7. 31.

@author: kitcoop

'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import json
import requests
url = "http://localhost:6080/springweb/ajax.do?method=jsonList"
data = requests.get(url)
print(data.text)
#3. json으로 데이터 파일 loading
result = json.loads(data.text)
#4. 결과에 대한 최상위값 가져옮  
emplist = result['emplist']


print("중요데이터\n",emplist)
#6. 데이터 프레임에 처리
#  DataFrame(핵심데이터, columns=[컬럼명지정])
df = DataFrame(emplist, columns=['ename','empno','job','mgr',
                                 'hiredate','sal','comm','deptno'])
print("데이터프레임\n",df)





