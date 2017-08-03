'''
Created on 2017. 7. 26.

@author: kitcoop
'''
## open("파일명","w-쓰기옵션","encoding 방식")
file =open("z01_test.txt","w",encoding='utf-8')
## 파일 객체 정보 출력..
print(file) 
## 파일에 데이터를 기록..write
file.write("Hello!! sidney!!")
file.write("\n\n")
## 데이터를 줄단위로 기록..
lines =["안녕하세요","반갑습니다.","파이썬입니다!!"]
## write("데이터단위구분자==>\n".join(배열데이터) )
file.write("\n".join(lines))
## 
file.writelines(lines)
## file자원해제
file.close()





