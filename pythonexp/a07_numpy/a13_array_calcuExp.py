'''
Created on 2017. 7. 25.

@author: kitcoop
확인예제
  과목  자바 jsp spring 
  3명으로 각 과목별 점수을 할당 처리.
  1. pass 요건  : 평균점수 70점이상일 pass 처리..
  2. 각 과목별로 pass여부 boolean 출력..

'''
import numpy as np
names = np.array(["홍길동","김길동","신길동"])
suj01 = np.array([90,80,70])
suj02 = np.array([80,80,70])
suj03 = np.array([60,50,60])
avgs = (suj01+suj02+suj03)/3
print(avgs)
isPass = np.greater_equal(avgs, 70)
print("평균PASS",isPass)
suj01Pass = np.greater_equal(suj01, 70)
print("자바:",suj01Pass)
suj02Pass = np.greater_equal(suj02, 70)
print("JSP:",suj02Pass)
suj03Pass = np.greater_equal(suj03, 70)
print("SPRING:",suj03Pass)




