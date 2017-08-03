'''
Created on 2017. 7. 25.

@author: kitcoop

ndarray의 자료형..
dtype를 통해서 데이터의 형태를 casting, promote 변경 및 설정 가능..
     또는, 해당 데이터의 type을 확인할 수 있다.
astype함수를 이용해서 타입을 변경할 수 있다.

정수형 : int8, int16,....  uint8....
실수형 : float16, float32,....
복소수 자료 : complex64, complex128
boolean : bool
객체 : object
문자열 : string_
유니코드 : unicode_

'''
import numpy as np
ar = np.array([1,2,3])
print("타입 확인:", ar.dtype) # 변수명.dtype 통해서 해당 데이터 타입확인..
ar = np.array(["12","2","3"])
print("타입 확인:",ar.dtype)
ar = np.array(["하이","굳","잡"])
print("타입 확인:",ar.dtype)
ar = np.array([3, 2.9,4])
print("타입 확인:",ar.dtype)
ar = np.array([3,2.9,'4'])
print("타입 확인:",ar.dtype)
ar = np.array([3,2,'4'],dtype=np.int32) 
# 문자열 데이터 해당 데이터(정수형-int32)로 casting해서 처리
print("타입 확인:",ar.dtype)
## astype(변수명.변경할데이터type) 
## 해당 변수를 변경할 데이터type으로 바꾸겠습니다.
ar = ar.astype(np.string_)
print("타입 확인:",ar.dtype)





