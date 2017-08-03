'''
Created on 2017. 7. 26.

@author: kitcoop
확인예제
1. 학생 5명의 과목별(3) 점수를 처리하고자 한다.
  해당하는 배열을 만들고,
   과목명을 문자열로 배열을 만들어..
   1) 첫번째 과목명으로 점수를 리턴
   2) 세번째 과목명으로 점수를 리턴
   3) 80점 이상인 과목의 점수를 리턴
   4) 두번째 과목의 2번째 학생의 점수를 리턴
'''
import numpy as np
pt =[90,80,70,
    60,50,40,
    70,50,90,
    80,90,90,
    95,70,80]
points = np.array(pt).reshape(3,5)
print(points)
subjects =np.array(["국어","영어","수학"])
print("국어:",points[subjects=="국어"])
print("수학:",points[subjects=="수학"])
print("80점이상:",points[points>=80])
print("두번째과목, 2번째 학생:",points[subjects=="영어",1])



