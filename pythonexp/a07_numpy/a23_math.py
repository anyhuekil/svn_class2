'''
Created on 2017. 7. 26.

@author: kitcoop
'''
import numpy as np
import matplotlib.pylab as plt
x = np.arange(0,2*np.pi,0.1)
print(x)
y = np.tan(x)
print(y)
plt.plot(x,y)
plt.show()