'''
Created on 2017. 7. 25.
확인예제
1. 가위, 바위, 보 배열을 만들고,
   위의 데이터를 랜덤으로 하나만 나오게 처리하세요.
   ## random_integers(시작, 마지막, 갯수) 정수범위
@author: kitcoop
'''
import numpy as np
games=np.array(["가위","바위","보"])
idx =np.random.random_integers(0, 2, 1)
print("랜덤1:",games[idx])
idxs =np.random.random_integers(0, 2, 2)
print("랜덤2:",games[idxs[0]],games[idxs[1]])

