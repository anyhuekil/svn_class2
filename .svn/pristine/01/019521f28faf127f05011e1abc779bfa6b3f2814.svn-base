'''
Created on 2017. 8. 1.

@author: kitcoop
1. import
    matplotlib.pyplot as plt
2. 영역 객체 생성..
    plt.figure()
3. 출력
    plt.show()
4. 그래프     
    시간 프름에 따라 비교할 때 꺾은 선 그래프를 처리..
    
5. 크기 변경
    figure를 호출할 때, figsize=(가로크기, 세로크기),
    단위 inch
6. 그리드 적용..
    grid()
7. 축의 라벨 설정..
    xlabel, ylabel 함수를 이용해서 축의 이름 설정..
8. 그래프의 제목 설정..
    title 함수..
9. 범례 설정..
     plot  label 텍스트 입력, legend 함수 호출..

10 색상변경 : color = 영문색상 rgb
11 선두께 : lw
12 xlim(최소, 최대값), ylim(최소,최대)
13 눈금 간격 : xticks/yticks   range()
14 눈금 문자열  xticklabels/yticklabels
15 marker 선모양..
    "." point


     
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
## 데이터..
s1 = Series([84900,81800,71756,92000])
s2 = Series([80500,82000,71736,90000])
## 크기 설정..
plt.figure(figsize=(10,4))
plt.plot(s1, label="08-01", marker="o", linestyle=":", color="#00ff00")
plt.plot(s2, label="08-02")
plt.grid()
## x,y축 라벨작성..
plt.xlabel("index")
plt.ylabel("stock")
plt.title("plot graph")
plt.legend()
plt.show()

