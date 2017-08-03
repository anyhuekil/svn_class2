'''
Created on 2017. 7. 27.
3명의 급여 데이터가 있다.
1월 급여 데이터(만원) 300, 400, 500
1월 급여 데이터를 저장하고,
2월 급여 데이터는 1월 급여에서 보너스가 15%가 책정이 되었다..
1월 급여 데이터에서 데이터를 로딩하여 보너스 데이터를 만들고,
총 2월 급여 = 1월급여+보너스 의 최종 데이터를 dictionary 형식으로
저장 하세요..
그리고, 저장된 3번째 사람의 최종 급여를 로딩하세요.
@author: kitcoop
'''
import numpy as np

salary =[300,400,500]
np.save("z12_salary01",salary)
bonus = np.load("z12_salary01.npy")
bonus = bonus*0.15
print(bonus)
print(salary+bonus)
np.savez("z12_salary01",sal=salary,bo=bonus, tot=(salary+bonus))
salary02 =np.load("z12_salary01.npz")
print(salary02["tot"][2])

