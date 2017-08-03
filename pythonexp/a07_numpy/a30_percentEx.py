'''
Created on 2017. 7. 26.
확인예제..
50명의 데이터를 임의로 0~100점까지 만들고,,
이중, 상위 10%, 상위5% 데이터를 list 하세요.
@author: kitcoop
'''
import numpy as np
points =np.random.random_integers(0, 100, 50)
points.sort()
print(points)
print("상위10%:",points[int(0.1*len(points)*-1):])
print("상위5%:",points[int(0.05*len(points)*-1):])

