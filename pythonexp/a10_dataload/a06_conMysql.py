'''
Created on 2017. 7. 28.

@author: kitcoop
'''
from pandas import Series, DataFrame
import numpy as np
import pandas as pd
import pymysql
con = pymysql.connect(host="localhost", port=3306, user="root", passwd="11111",
                      db="test", charset="utf8")
print("연결:",con)
con.close()
