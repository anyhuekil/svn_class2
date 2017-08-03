'''
Created on 2017. 8. 2.

@author: kitcoop

히스토그램..
1. 막대 그래프의 한 종류로 값의 [빈도]를 분리해서 보여준다.
2. 빈도를 처리하는 value_counts()
3. 숫자 데이터 hist( bins=@@) 
    1) bins : 구간의 개수 설정..


'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
from matplotlib import font_manager, rc
font_name= font_manager.FontProperties(fname="c:/Windows/Fonts/malgun.ttf").get_name()
rc('font', family=font_name)

## 데이터 프레임..
df = pd.read_csv('lovefruits.csv', encoding='ms949')
print(df)

data = df['선호과일'].value_counts()
print(data)
plt.bar(range(0,len(data),1), data)
## x축에서 과일 이름표시..
plt.xticks(range(0,len(data),1), data.index)
plt.title("과일선호도")
plt.show()



