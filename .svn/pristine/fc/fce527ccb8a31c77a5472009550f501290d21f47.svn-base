'''
Created on 2017. 7. 25.

@author: kitcoop

ndarray의 산술연..
1. 배열과 숫자 데이터 연산은 배열의 **각 요소*에 연산결과를 리턴한다.

2. 동일 크기를 갖는 배열은 **동일한 위치의 요소데이터끼리 연산 수행
    ex) list01 =np.array([1,2,3]) 
    ex) list02 =np.array([3,4,5])
    list03 = list01*2  ==> 각요소들 마다 데이터를 *2를 처리한다.
        [2,4,6]
    list04 = list01+list02 ==> 각 요소의 같은 위치의 데이터 끼리 + 연산..
        [4,6,8] 
3. 비교 연산도 동일한 위치의 데이터를 비교
    boolList = np.equal( list01, list02 ) 
            [False,False,False]
    np.not_equal(a,b) np.greater(a,b) np.greater_equal(a,b)
                      np.less(a,b)  np.less_equal(a,b)
                             
'''
import numpy as np
ar = np.array([1,2,3])
br = np.array([4,5,6])
cr = np.array([[6,7,8],[10,20,30]])
result = ar*2 #배열의 모든 요소에 2을 곱한 결과..
print(result)
result = ar + br # 배열의 요소한 덧셈 : **동일한 위치간 덧셈..
print(result)

br = np.array([4,2,6])
## equal 각요소의 데이터 동일한지 여부를 boolean으로 return
print("equal",np.equal(ar,br))
print("not_equal",np.not_equal(ar,br))
print("greater(>)",np.greater(ar,br))
print("greater_equals(>=)",np.greater_equal(ar,br))
print("less(<)",np.less(ar,br))
print("less_equals(<=)",np.less_equal(ar,br))

a = np.array([10,20,30])
b = np.arange(12).reshape((4,3))
print("a:",a)
print("b:",b)
# b배열에 각 열마다 a배열에 같은 열(위치)에 있는 데이터 값 연산
print("a + b:", (a+b))
a = np.array([10,20,30]).reshape(3,1)
b = np.arange(12).reshape((3,4))
print("a:",a)
print("b:",b)
# a + b를 하면 각 행마다 같은 행(위치)에 있는 데이터 값 연산
print("a + b:",(a+b))






