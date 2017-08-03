'''
Created on 2017. 8. 2.

@author: kitcoop

## 파이(pie) 그래프..
1. 전체적으로 데이터의 비율을 확인할 때 활용..
2. plt.pie(데이터, labels=@@@, )
3. 속성..
    1) labels : 데이터의 레이블을 출력..
    2) colors : 각 데이터별 색상
    3) explode : 조각 분할
    4) autopct : 백분율 표시..

'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
from matplotlib import font_manager, rc
font_name= font_manager.FontProperties(fname="c:/Windows/Fonts/malgun.ttf").get_name()
rc('font', family=font_name)

df = pd.read_csv('student.csv', encoding='ms949')
print(df)
plt.figure()
## explode : 조각분할 옵션..데이터 간에 조각을 분할 하여 강조처리..
explode =(0, 0.1, 0.1, 0, 0, 0, 0, 0.1, 0)
print(len(df['국어']))
## % 표시.. 소숫점 1자리    ==> 1.1f% ==> autopct옵션으로 설정..
## 데이터는 ?
## 총점 기준..
print(df['국어']+df['영어']+df['수학'],
      str(":"),sum(df['국어']+df['영어']+df['수학']))
plt.pie(df['국어']+df['영어']+df['수학'], labels=df['이름'], explode=explode,
        autopct='%1.1f%%')
plt.title("학생별 점수 비율")
##plt.legend()
plt.show()



















