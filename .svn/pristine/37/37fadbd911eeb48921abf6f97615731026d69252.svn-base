'''
Created on 2017. 7. 28.

@author: kitcoop
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import csv

## chunksize : 로딩할 때, 한번에 읽어 올 데이터 건수.
parser = pd.read_csv("good.csv", header=None, chunksize=3)
print(parser)
## 반복문을 통해서 데이터 가져오기..
for piece in parser:
    print(piece.sort_values(by=2, ascending=False))
    ## 2번째 컬럼은 내림차순 정렬.
    print("#"*30)

items = pd.read_csv("fruit.csv",header=None)
print(items)
## csv 객체를 통한 reader활용하여... 파일 읽기.. delimiter 지원
print("#"*30)
lines = list( csv.reader(open("fruit.csv"),delimiter="|") )
print(lines)
## list 데이터 프레임에 넣기.. column 지정..
frame = DataFrame(lines, columns=["name","count","price"])
print(frame)
'''


'''




    
    