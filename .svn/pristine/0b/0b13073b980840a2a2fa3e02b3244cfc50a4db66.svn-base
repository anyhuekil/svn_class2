'''
Created on 2017. 7. 26.

@author: kitcoop
## 행과 열의 변환..
1) T라는 속성으로 기본 행과 열이 변환이 되어 처리된다.
ex)  ar = 배열..
     ar.T  (행과 열이 변경된 내용 확인)
2) transpose() 메서드
    - 매개변수 없이 처리..
'''
import numpy as np
ar = np.array([[[1,2]],[[4,5]],[[7,8]]])
print(ar)
print(ar.T)
print(ar.transpose())
## 매개변수로 순서지정
print("원래 순서:",ar.transpose(0,1,2))
print("행열을 바꾼순서",ar.transpose(2,1,0))