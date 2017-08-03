'''
Created on 2017. 8. 2.

@author: kitcoop
## 시각화 처리 plot메서드 인자.
1. label : 그래프의 범례 이름..
2. ax : 그래프의 그릴 matplotlib 서브플롯 객체
3. style : matplotlib에 전달할 스타일 문자열..
4. alpha : 투명도 처리..
5. kind : 그래프 종류 line/bar/barh/kde
6. xticks : x축으로 사용할 값.
7. yticks : y축으로 사용할 값.
8. xlim/ylim : x축,y축 한계
9. grid : 축의 그리드를 표시할지 여부..
10. subplots : DataFrame의 독립된 서브플럿을 생성..
11. sharex/sharey : x/y축의 눈금과 한계..
12. figsize : 그래프의 크기를 지정..
13. legend : 서블플롯에 범례를 추가..
14. sort_columns : 컬럼을 알파벳 순서로 그림..


 



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
# barh : 바를 수평으로 처리
print(df['국어'])
print(-df['영어'])
plt.figure()
## 기준치에서 양의 값을 처리..- 국어점수는 오른쪽으로..
plt.barh(df.index, df['국어'], color='r', label='국어')
## 기준치에서 음의 값을 처리 - 영어점수는 왼쪽으로
plt.barh(df.index, -df['영어'], color='g', label='영어' )
## 메인 타이틀..
plt.title("학생별 국어, 영어 점수")
## y축에는 이름을 처리..
## 1) 단계에 범위를 설정..
print( range(0,len(df.index),1) )
## 2) 해단 내용에 이름을 처리..
print( df['이름'])
plt.yticks(range(0,len(df.index),1), df['이름'], rotation='horizontal' )
## x축에서 처리될 내용. 데이터값, 화면에 나타날 내용..
plt.xticks([-100,-50,0,50,100],(100,50,0,50,100))
## 범례처리..
plt.legend()
plt.show()



