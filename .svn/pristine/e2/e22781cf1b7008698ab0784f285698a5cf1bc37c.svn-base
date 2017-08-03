'''
Created on 2017. 7. 27.

@author: kitcoop

DataFrame 확인예제
프로야구 순위..
순위  팀명  승 무 패  승률

1. 두번째 팀의 이름
2. 승률 리스트.


'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

no = np.arange(1,11,1)
print(no)
team = ["KIA","NC","두산","넥센","LG","SK","롯데","삼성","한화","KT"]
vic =[61,54,49,49,46,49,46,38,36,29]
eq =[0,1,1,1,1,1,2,4,1,0]
de =[32,37,40,44,42,46,45,53,55,63]
vrto = np.round( np.array(vic)/( np.array(vic)+ np.array(de))*1000 )/1000
print(vrto)
df = DataFrame({"순위":no,"팀명":team,"승":vic,"무":eq,"패":de,"승률":vrto})
print(df)
##print(df.ix[1]["팀명"])
##print(df["승률"])


