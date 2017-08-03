'''
Created on 2017. 7. 28.

@author: kitcoop
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd

emplist = pd.read_csv("emp2.csv",header=None, names=["사원","이름","부서번호","급여"])
print(emplist)
emplist = pd.read_csv("emp2.csv",header=None, 
                     skiprows=2,
                      names=["사원","이름","부서번호","급여"])
print(emplist)
emplist = pd.read_csv("emp2.csv", header=None, skip_footer=2,
                      names=["사원","이름","부서번호","급여"],encoding="utf-8")
print(emplist)
