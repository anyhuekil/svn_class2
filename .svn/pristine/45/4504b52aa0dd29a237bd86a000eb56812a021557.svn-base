'''
Created on 2017. 7. 27.

@author: kitcoop

numpy에서 저장과 열기
1. numpy.save(파일경로, 데이터) : 
    raw 데이터의 형태로 저장, 확장자는 .npy 자동으로 삽입..
2. 읽을 때 : load(파일 경로)
3. 딕션너리 형태(key=value, key=value)로 저장
   numpy.savez("파일명", key명=데이터, key명=데이터 )저장 확장자 .npz
4. 데이터를 읽을 시,
    데이터명["키"]   
5. 구분자로 csv형식 파일 읽기..
    loadtxt("파일경로",  delimiter="구분자") csv형식의 파일 읽기.

'''
import numpy as np
ar =[100,200,300]
## 저장 numpy.save()   .npy
np.save("z10_data01",ar)
## 파일의 데이터 가져 오기..
br = np.load("z10_data01.npy")
print("파일에서 온 데이터:",br)
cr = ar+br
## dict형식으로 저장.. savez(), *.npz
np.savez("z11_data02", a=ar, b=br, c=cr )
## 불러오기..load
result = np.load("z11_data02.npz")
print(result)
print(result["a"])
print(result["b"])
print(result["c"])


















