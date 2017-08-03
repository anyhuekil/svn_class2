'''
Created on 2017. 8. 1.

@author: kitcoop
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import pytagcloud
from collections import Counter

foods = list()
## 해당하는 문자열을 갯수( for t in range(8) ) 
foods.extend(['불고기' for t in range(8)])
foods.extend(['비빔밥' for t in range(7)])
foods.extend(['김치찌개' for t in range(6)])
foods.extend(['돈까스' for t in range(6)])
foods.extend(['순두부백반' for t in range(6)])
foods.extend(['짬뽕' for t in range(5)])
foods.extend(['짜장면' for t in range(9)])
foods.extend(['삼겹살' for t in range(4)])
foods.extend(['초밥' for t in range(3)])
foods.extend(['우동' for t in range(10)])
## 데이터 건수..
count = Counter(foods)
print("건수:",count)
tag2 = count.most_common(100)
print("tag2:",tag2)
taglist = pytagcloud.make_tags(tag2, maxsize=50)
print("태그리스트:",taglist)
## 워드 클라우드..
pytagcloud.create_tag_image(taglist,'wordscloud.jpg', size=(900,600),
                            fontname='Korean', rectangular=False)