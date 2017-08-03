'''
Created on 2017. 7. 25.

@author: kitcoop
'''
import numpy as np
if __name__ == '__main__':
    points = np.array([70,80,90])
    
    tot = points[0]+points[1]+points[2]
    avg = tot/3
    print("국어\t영어\t수학\t총계\t평균")
    print("{}\t{}\t{}\t{}\t{}".format(points[0],points[1],points[2],tot,avg))