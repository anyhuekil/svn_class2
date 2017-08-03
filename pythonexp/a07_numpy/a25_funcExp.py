'''
Created on 2017. 7. 26.
확인예제..
1학기 점수  70 80 90 60
2학기 점수  90 70 70 80

최종 점수 : 두값 비교해서 높은 점수 처리
np.where를 활용해서 최종 점수를 list 하세요..
@author: kitcoop
'''
import numpy as np
season1 = np.array([70,80,90,60])
season2 = np.array([90,70,70,80])
ckpoint = season1>=season2
print(ckpoint)
lastPoints = np.where(ckpoint, season1,season2)
print(lastPoints)


