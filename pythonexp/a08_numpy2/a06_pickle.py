'''
Created on 2017. 7. 27.

@author: kitcoop

객체를 파일로 저장할 때, 장점..
1) 파일에 특정데이터를 로딩하지 않고도, 객체단위로 바로 활용

파이선에에 객체를 파일로 저장 할때, 사용되는 모듈
1) 피클링 모듈, DBM 관련 모듈
2) [피클링 모듈]은 임의의 파이썬 객체를 저장하는 가장 일반화된 모듈

피클링(pickle)를 통한 저장처리..
1) pickle.dump(출력할 객체, 파일객체)

피클링을 통해 읽어오기..
1) pickle.load(파일객체) : 객체를 1개씩 읽기.
2) pickle.loads(파일객체) : 객체 전체를 바이트 단위로 읽기

'''
import numpy as np
class Dto:
    def setNum(self, num):
        self.num = num
    def setName(self, name):
        self.name = name
    def getNum(self):
        return self.num
    def getName(self):
        return self.name
    def toString(self):
        return "{번호:"+str(self.num)+",이름:"+self.name+"}"
    
data1 = Dto()
data1.setNum(1)
data1.setName("park")

data2 = Dto()
data2.setNum(2)
data2.setName("kim")

li = [data1, data2]
import pickle
## 반복을 통해서 여러 객체를 한 파일에 할당할 때..
## with open(파일) as 파일객체명
##    pickle.dump(리스트데이터,파일객체) :저장..
with open("z04_test.txt","wb") as f:
    pickle.dump(li,f)

with open("z04_test.txt","rb") as f:
    result = pickle.load(f)  ## 로딩 처리..
    for temp in result:
        print(temp.toString()) ## 반복문을 통해서 해당 객체 메서드