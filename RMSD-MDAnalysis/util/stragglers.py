import pandas as pd
import numpy as np
from DaskProfileReader import *
from bokeh.models import CheckboxGroup, CustomJS

def straggler_test_reader(path,data):

    rmsd = pd.DataFrame(columns=['Block','Try','Task','Time'])
    block_size = [1,2,3,4,6,8,9,12,16,18,24,36,48,72,144]

    for block in block_size:
        temp = pd.DataFrame(columns=['Block','Try','Task','Time'])
        data1 = DaskProfileReader('%s/stragglers_test_%d_%d_1.txt'%(path,data,block))
        temp['Time']=data1[data1['name']=='block_rmsd']['duration'].values/1000
        temp['Task']=range(block)
        temp['Try']='Run 1'
        temp['Block']=block
        rmsd = rmsd.append(temp)
        temp = pd.DataFrame(columns=['Block','Try','Task','Time'])
        data2 = DaskProfileReader('%s/stragglers_test_%d_%d_2.txt'%(path,data,block))
        temp['Time'] = data2[data2['name']=='block_rmsd']['duration'].values/1000
        temp['Task']=range(block)
        temp['Try']='Run 2'
        temp['Block']=block
        rmsd= rmsd.append(temp)
        temp = pd.DataFrame(columns=['Block','Try','Task','Time'])
        data3 = DaskProfileReader('%s/stragglers_test_%d_%d_3.txt'%(path,data,block))
        temp['Time'] = data3[data3['name']=='block_rmsd']['duration'].values/1000
        temp['Task']=range(block)
        temp['Try']='Run 3'
        temp['Block']=block
        rmsd = rmsd.append(temp)
        temp = pd.DataFrame(columns=['Block','Try','Task','Time'])
        data4 = DaskProfileReader('%s/stragglers_test_%d_%d_4.txt'%(path,data,block))
        temp['Time'] = data4[data4['name']=='block_rmsd']['duration'].values/1000
        temp['Task']=range(block)
        temp['Try']='Run 4'
        temp['Block']=block
        rmsd = rmsd.append(temp)
        temp = pd.DataFrame(columns=['Block','Try','Task','Time'])
        data5 = DaskProfileReader('%s/stragglers_test_%d_%d_5.txt'%(path,data,block))
        temp['Time'] = data5[data5['name']=='block_rmsd']['duration'].values/1000
        temp['Task']=range(block)
        temp['Try']='Run 5'
        temp['Block']=block
        rmsd = rmsd.append(temp)

    rmsd=rmsd.reset_index().drop('index',axis=1)

    return rmsd
    
   