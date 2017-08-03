'''
Created on 2017. 8. 2.

@author: kitcoop

점수의 비율로 상,중,하 처리..


'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
from matplotlib import font_manager, rc
font_name= font_manager.FontProperties(fname="c:/Windows/Fonts/malgun.ttf").get_name()
rc('font', family=font_name)

df = pd.read_csv("student.csv", encoding='ms949')
## 데이터 연결처리..
print(pd.concat([df['국어'],df['영어'],df['수학']]))
data = pd.concat([df['국어'],df['영어'],df['수학']])
## 영역을 3분위로 나누기  bins =3
plt.hist(data, bins =9)
### 점수 배분  [하] 40 [중] 80 [상] 100
###     ==> range(0,100,40 )
### x축에서 해당 데이터 출력..
plt.xticks(range(0,100,10),np.arange(0,100,10))
plt.title('점수빈도')
plt.show()







