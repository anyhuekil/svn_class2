'''
Created on 2017. 7. 27.

@author: kitcoop
확인예제
Person 클래스 정의
   이름, 나이
    set/get

p1 : 홍길동 25
p2 : 길길동 27
z05_test.txt 파일로 저장 및 로딩처리..
'''
import numpy as np

class Person:
    def setName(self,name):
        self.name = name
    def getName(self):
        return self.name
    def setAge(self,age):
        self.age = age
    def getAge(self):
        return self.age

p1 =Person()
p1.setName("홍길동")
p1.setAge(25)
p2 =Person()
p2.setName("김길동")
p2.setAge(27)

plist =[p1,p2]
import pickle
f =open("z05_test.txt","wb")
with f:
    pickle.dump(plist,f)
f2 = open("z05_test.txt","rb")    
with f2:
    p = pickle.load(f2)
    for temp in p:
        print(temp.getName(),temp.getAge()) ## 반복문을 통해서 해당 객체 메서드  
    







    
