'''
Created on 2017. 7. 25.

@author: kitcoop

인덱스의 음수는 -1부터 시작해서 가장 뒤쪽으로 부터 역순으로 처리한다.
[2,3,5,7]
[-1] ==> 7
[-3] ==> 3

2차원 배열 접근 방법
[[1,2],[3,4]]
[첫번째index, 두번째 내부배열index]
[0,0] ==> 1
[1,0] ==> 2
'''
import numpy as np
ar = np.array([1,2,3])
print("ar[0]:",ar[0])
print("ar[1]:",ar[1])
print("ar[-1]:",ar[-1])

ar = np.array([[1,2],[3,4]])
print("ar[0][1]:",ar[0][1])
print("ar[1,1]:",ar[1,1]) # ar[indx1,indx2]
print("ar[0]",ar[0])

                    
                      







