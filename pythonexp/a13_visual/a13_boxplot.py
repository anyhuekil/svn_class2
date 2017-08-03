'''
Created on 2017. 8. 2.

@author: kitcoop
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

plt.boxplot((df['국어'],df['영어'],df['수학']), labels=('국어','영어','수학'))
## boxplot을 통해서 나타난 데이터.
##  최대값, 최소값, 평균값, 중간값..
print("최소:", df['수학'].min())
print("최대:", df['수학'].max())
print("평균값:", df['수학'].mean())
print("중간값:", df['수학'].median())
plt.title("점수분포")
plt.legend()
plt.show()