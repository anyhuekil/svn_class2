'''
Created on 2017. 7. 26.
확인예제..
1-1 홍길동 김길동
1-2 이길도 마길도
2-1 이영순 최정아
2-2 오연지 신혜영
3-1 이수아 조정연
3-1 신혜라 이정석

위 데이터를 2차원배열로 만드기.
1. 학년별 편성을 처리하기.
2. 반별로 반편성을 
  ex) 1-1, 2-1, 3-1
@author: kitcoop
'''
import numpy as np
students =[[["홍길동", "김길동"],["이길도", "마길도"]],
           [["이영순", "최정아"],["오연지", "신혜영"]],
           [["이수아", "조정연"],["신혜라", "이정석"]]]
st01=np.array(students[0])
st02=np.array(students[1])
st03=np.array(students[2])
grade01=np.concatenate((st01))
grade02=np.concatenate((st02))
grade03=np.concatenate((st03))
print("학년별:",np.array([grade01,grade02,grade03]))
print("반별:",np.concatenate((st01,st02,st03), axis=1) )

