'''
Created on 2017. 8. 1.

@author: kitcoop

막대 그래프
1. 비교 대상이 있을 때, 강조해야 하는 경우 
2. bar() 함수로 출력..
3. barh() : 수평 막대 그래프
4. 너비 : width
5. 막대 그래프를 2개 출력 width 0.5이하..x축이동


'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib import font_manager, rc
font_name= font_manager.FontProperties(fname="c:/Windows/Fonts/malgun.ttf").get_name()
rc('font', family=font_name)

df = pd.read_csv('student.csv', encoding="ms949")
print(df)
plt.figure()
plt.bar(df.index,df['국어'], width=0.3,color='r', label="국어")
plt.bar(df.index+0.3,df['영어'], width=0.3,color='g', label="영어")
plt.bar(df.index+0.6,df['수학'], width=0.3,color='b', label="수학")
plt.xticks(range(0,len(df.index),1), df['이름'], rotation="vertical")
plt.title("학생별 국어, 영어, 수학 점수!!")
plt.legend()
plt.show()


