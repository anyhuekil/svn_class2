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
plt.bar(df.index,df['국어'], color='r', label="국어")
## bottom 데이터를 해당 데이터 다음에 처리..
## df.index는 동일..
## width 옵션 삭제
plt.bar(df.index,df['영어'], color='g', label="영어", bottom=df['국어'] )
plt.bar(df.index,df['수학'], color='b', label="수학", bottom=df['영어'] )
plt.xticks(range(0,len(df.index),1), df['이름'], rotation="vertical")
plt.yticks(range(0,300,20))
plt.title("학생별 국어, 영어, 수학 점수!!")
plt.legend()
plt.show()


