'''
Created on 2017. 7. 26.

@author: kitcoop
'''
file=open("z01_test.txt","r", encoding="utf-8")
print(file)
## 한번에 전부 읽기
content = file.read()
file.close()
print("파일내용\n",content)
## 줄단위로 읽기
print("줄단위 읽기")
file = open("z01_test.txt","r", encoding="utf-8")
for line in file:
    print(line)
file.close()    
print("readlines() 활용")
file = open("z01_test.txt","r", encoding="utf-8")
lines = file.readlines()
print("라인별로 배열할당:",lines)
file.close()


