'''
Created on 2017. 7. 25.

@author: kitcoop
'''
import numpy as np
dist = np.linspace(0,10,3,endpoint=False)
print(dist)
points = np.array([90,80,70,60,50,100,70,80,90])
points2 = points.reshape(3,3)
print(points2)