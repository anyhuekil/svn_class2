확인예제
# 확인 예제..
# 1. 5~20까지 문자형으로 선언
# 2. 위 데이터를 int32으로 변경을 해서, 합산처리 후 결과 출력.
# 3. int32로 변경된 데이터를 문자형으로 변환해서..
#    5678910...20 형태로 출력하세요..
from numpy import *
ar = arange(5,21)
ar = ar.astype(string_)
print("타입 확인:",ar.dtype)
print("문자열:",ar)
## ar = np.array([3,2,'4'],dtype=np.int32) 
ar =array(ar,dtype=int32)
print("숫자형:",ar)
sum=0
for data in ar :
    sum +=data
print("총합:",sum) 