'''
Created on 2017. 8. 1.

@author: kitcoop
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.image as mpimg

## matplotlib.image의 imread("이미지경로/파일명")
##   해당이미지를 가져오세요~~
img = mpimg.imread("wordscloud.jpg")
## pyplot.imshow(이미지객체)
imgplot = plt.imshow(img)
plt.show()

