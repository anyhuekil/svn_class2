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
## 각각의 점수별로 데이터 처리..
print((df['국어'],df['영어'],df['수학']))
# bins : 영역 나누기.
plt.hist( (df['국어'],df['영어'],df['수학']), bins =10, 
          label=('국어','영어','수학') )
plt.title("점수빈도")
plt.legend()
plt.show()