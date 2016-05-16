import os
import sys
import time
import datetime
import numpy as np
import matplotlib.pyplot as plt
from textwrap import wrap

def transfer(data,start):

    final = list()
    for point in data:
        final.append(point - start)

    return final


def read_data(file,cores):
    try:
        CsvFile = open(file + ".csv", "r")
    except IOError:
        print 'Warning: unable to access template file...'

    clust_times_stagein_1 = list()
    clust_times_exec_1 = list()
    clust_times_stageout_1 = list()
    clust_times_done_1 = list()

    clust_times_stagein_2 = list()
    clust_times_exec_2 = list()
    clust_times_stageout_2 = list()
    clust_times_done_2 = list()

    clust_times_stagein_3 = list()
    clust_times_exec_3 = list()
    clust_times_stageout_3 = list()
    clust_times_done_3 = list()

    contents = CsvFile.readlines()
    CsvFile.close()

    for line in contents:
        RowContents = line.split(',')

        if RowContents[0].startswith('unit') and \
           int(RowContents[0].split('.')[1])<cores:
            clust_times_stagein_1.append(float(RowContents[2]))
            clust_times_exec_1.append(float(RowContents[4]))
            clust_times_stageout_1.append(float(RowContents[5]))
            clust_times_done_1.append(float(RowContents[6]))
        elif RowContents[0].startswith('unit') and \
             int(RowContents[0].split('.')[1])<(2*cores):
            clust_times_stagein_2.append(float(RowContents[2]))
            clust_times_exec_2.append(float(RowContents[4]))
            clust_times_stageout_2.append(float(RowContents[5]))
            clust_times_done_2.append(float(RowContents[6]))
        elif RowContents[0].startswith('unit') and \
             int(RowContents[0].split('.')[1])<(3*cores):
            clust_times_stagein_3.append(float(RowContents[2]))
            clust_times_exec_3.append(float(RowContents[4]))
            clust_times_stageout_3.append(float(RowContents[5]))
            clust_times_done_3.append(float(RowContents[6]))

    #---------------------------------------------------------------------------
    # Move Time Zero to the first stagein
    zeropoint = min(clust_times_stagein_1)
    StagingIn_iter1 = transfer(clust_times_stagein_1,zeropoint)
    Exec_iter1 = transfer(clust_times_exec_1,zeropoint)
    StagingOut_iter1 = transfer(clust_times_stageout_1,zeropoint)
    Done_iter1 = transfer(clust_times_done_1,zeropoint)

    StagingIn_iter2 = transfer(clust_times_stagein_2,zeropoint)
    Exec_iter2 = transfer(clust_times_exec_2,zeropoint)
    StagingOut_iter2 = transfer(clust_times_stageout_2,zeropoint)
    Done_iter2 = transfer(clust_times_done_2,zeropoint)

    StagingIn_iter3 = transfer(clust_times_stagein_3,zeropoint)
    Exec_iter3 = transfer(clust_times_exec_3,zeropoint)
    StagingOut_iter3 = transfer(clust_times_stageout_3,zeropoint)
    Done_iter3 = transfer(clust_times_done_3,zeropoint)

    return {'iter1':{'StageIn':StagingIn_iter1,
                     'Exec':Exec_iter1,
                     'StageOut':StagingOut_iter1,
                     'Done':Done_iter1},
            'iter2':{'StageIn':StagingIn_iter2,
                     'Exec':Exec_iter2,
                     'StageOut':StagingOut_iter2,
                     'Done':Done_iter2},
            'iter3':{'StageIn':StagingIn_iter3,
                     'Exec':Exec_iter3,
                     'StageOut':StagingOut_iter3,
                     'Done':Done_iter3}
            }

if __name__=="__main__":

    #---------------------------------------------------------------------------
    # 16 cores
    
    data_file1 = read_data('k-means-stampede-weak-16-2015-08-03T09:37:26.299786',16)
    data_file2 = read_data('k-means-stampede-weak-16-2015-08-03T09:51:39.353867',16)
    data_file3 = read_data('k-means-stampede-weak-16-2015-08-03T10:05:47.682335',16)

    StageIn16Iter1 = {'mean':np.mean(data_file1['iter1']['StageIn'] + 
                                     data_file2['iter1']['StageIn'] +
                                     data_file3['iter1']['StageIn']),
                      'std':np.std(data_file1['iter1']['StageIn'] + 
                                   data_file2['iter1']['StageIn'] +
                                   data_file3['iter1']['StageIn'])}

    Exec16Iter1 = {'mean':np.mean(data_file1['iter1']['Exec'] + 
                                     data_file2['iter1']['Exec'] +
                                     data_file3['iter1']['Exec']),
                      'std':np.std(data_file1['iter1']['Exec'] + 
                                   data_file2['iter1']['Exec'] +
                                   data_file3['iter1']['Exec'])}

    StageOut16Iter1 = {'mean':np.mean(data_file1['iter1']['StageOut'] + 
                                     data_file2['iter1']['StageOut'] +
                                     data_file3['iter1']['StageOut']),
                      'std':np.std(data_file1['iter1']['StageOut'] + 
                                   data_file2['iter1']['StageOut'] +
                                   data_file3['iter1']['StageOut'])}

    Done16Iter1 = {'mean':np.mean(data_file1['iter1']['Done'] + 
                                     data_file2['iter1']['Done'] +
                                     data_file3['iter1']['Done']),
                      'std':np.std(data_file1['iter1']['Done'] + 
                                   data_file2['iter1']['Done'] +
                                   data_file3['iter1']['Done'])}

    StageIn16Iter2 = {'mean':np.mean(data_file1['iter2']['StageIn'] + 
                                     data_file2['iter2']['StageIn'] +
                                     data_file3['iter2']['StageIn']),
                      'std':np.std(data_file1['iter2']['StageIn'] + 
                                   data_file2['iter2']['StageIn'] +
                                   data_file3['iter2']['StageIn'])}

    Exec16Iter2 = {'mean':np.mean(data_file1['iter2']['Exec'] + 
                                     data_file2['iter2']['Exec'] +
                                     data_file3['iter2']['Exec']),
                      'std':np.std(data_file1['iter2']['Exec'] + 
                                   data_file2['iter2']['Exec'] +
                                   data_file3['iter2']['Exec'])}

    StageOut16Iter2 = {'mean':np.mean(data_file1['iter2']['StageOut'] + 
                                     data_file2['iter2']['StageOut'] +
                                     data_file3['iter2']['StageOut']),
                      'std':np.std(data_file1['iter2']['StageOut'] + 
                                   data_file2['iter2']['StageOut'] +
                                   data_file3['iter2']['StageOut'])}

    Done16Iter2 = {'mean':np.mean(data_file1['iter2']['Done'] + 
                                     data_file2['iter2']['Done'] +
                                     data_file3['iter2']['Done']),
                      'std':np.std(data_file1['iter2']['Done'] + 
                                   data_file2['iter2']['Done'] +
                                   data_file3['iter2']['Done'])}

    StageIn16Iter3 = {'mean':np.mean(data_file1['iter3']['StageIn'] + 
                                     data_file2['iter3']['StageIn'] +
                                     data_file3['iter3']['StageIn']),
                      'std':np.std(data_file1['iter3']['StageIn'] + 
                                   data_file2['iter3']['StageIn'] +
                                   data_file3['iter3']['StageIn'])}

    Exec16Iter3 = {'mean':np.mean(data_file1['iter3']['Exec'] + 
                                     data_file2['iter3']['Exec'] +
                                     data_file3['iter3']['Exec']),
                      'std':np.std(data_file1['iter3']['Exec'] + 
                                   data_file2['iter3']['Exec'] +
                                   data_file3['iter3']['Exec'])}

    StageOut16Iter3 = {'mean':np.mean(data_file1['iter3']['StageOut'] + 
                                     data_file2['iter3']['StageOut'] +
                                     data_file3['iter3']['StageOut']),
                      'std':np.std(data_file1['iter3']['StageOut'] + 
                                   data_file2['iter3']['StageOut'] +
                                   data_file3['iter3']['StageOut'])}

    Done16Iter3 = {'mean':np.mean(data_file1['iter3']['Done'] + 
                                     data_file2['iter3']['Done'] +
                                     data_file3['iter3']['Done']),
                      'std':np.std(data_file1['iter3']['Done'] + 
                                   data_file2['iter3']['Done'] +
                                   data_file3['iter3']['Done'])}

    #---------------------------------------------------------------------------
    # 32 cores

    data_file1 = read_data('k-means-stampede-weak-32-2015-08-03T10:23:52.732976',32)
    data_file2 = read_data('k-means-stampede-weak-32-2015-08-03T10:41:43.828817',32)
    data_file3 = read_data('k-means-stampede-weak-32-2015-08-03T10:59:46.573281',32)

    StageIn32Iter1 = {'mean':np.mean(data_file1['iter1']['StageIn'] + 
                                     data_file2['iter1']['StageIn'] +
                                     data_file3['iter1']['StageIn']),
                      'std':np.std(data_file1['iter1']['StageIn'] + 
                                   data_file2['iter1']['StageIn'] +
                                   data_file3['iter1']['StageIn'])}

    Exec32Iter1 = {'mean':np.mean(data_file1['iter1']['Exec'] + 
                                     data_file2['iter1']['Exec'] +
                                     data_file3['iter1']['Exec']),
                      'std':np.std(data_file1['iter1']['Exec'] + 
                                   data_file2['iter1']['Exec'] +
                                   data_file3['iter1']['Exec'])}

    StageOut32Iter1 = {'mean':np.mean(data_file1['iter1']['StageOut'] + 
                                     data_file2['iter1']['StageOut'] +
                                     data_file3['iter1']['StageOut']),
                      'std':np.std(data_file1['iter1']['StageOut'] + 
                                   data_file2['iter1']['StageOut'] +
                                   data_file3['iter1']['StageOut'])}

    Done32Iter1 = {'mean':np.mean(data_file1['iter1']['Done'] + 
                                     data_file2['iter1']['Done'] +
                                     data_file3['iter1']['Done']),
                      'std':np.std(data_file1['iter1']['Done'] + 
                                   data_file2['iter1']['Done'] +
                                   data_file3['iter1']['Done'])}

    StageIn32Iter2 = {'mean':np.mean(data_file1['iter2']['StageIn'] + 
                                     data_file2['iter2']['StageIn'] +
                                     data_file3['iter2']['StageIn']),
                      'std':np.std(data_file1['iter2']['StageIn'] + 
                                   data_file2['iter2']['StageIn'] +
                                   data_file3['iter2']['StageIn'])}

    Exec32Iter2 = {'mean':np.mean(data_file1['iter2']['Exec'] + 
                                     data_file2['iter2']['Exec'] +
                                     data_file3['iter2']['Exec']),
                      'std':np.std(data_file1['iter2']['Exec'] + 
                                   data_file2['iter2']['Exec'] +
                                   data_file3['iter2']['Exec'])}

    StageOut32Iter2 = {'mean':np.mean(data_file1['iter2']['StageOut'] + 
                                     data_file2['iter2']['StageOut'] +
                                     data_file3['iter2']['StageOut']),
                      'std':np.std(data_file1['iter2']['StageOut'] + 
                                   data_file2['iter2']['StageOut'] +
                                   data_file3['iter2']['StageOut'])}

    Done32Iter2 = {'mean':np.mean(data_file1['iter2']['Done'] + 
                                     data_file2['iter2']['Done'] +
                                     data_file3['iter2']['Done']),
                      'std':np.std(data_file1['iter2']['Done'] + 
                                   data_file2['iter2']['Done'] +
                                   data_file3['iter2']['Done'])}

    StageIn32Iter3 = {'mean':np.mean(data_file1['iter3']['StageIn'] + 
                                     data_file2['iter3']['StageIn'] +
                                     data_file3['iter3']['StageIn']),
                      'std':np.std(data_file1['iter3']['StageIn'] + 
                                   data_file2['iter3']['StageIn'] +
                                   data_file3['iter3']['StageIn'])}

    Exec32Iter3 = {'mean':np.mean(data_file1['iter3']['Exec'] + 
                                     data_file2['iter3']['Exec'] +
                                     data_file3['iter3']['Exec']),
                      'std':np.std(data_file1['iter3']['Exec'] + 
                                   data_file2['iter3']['Exec'] +
                                   data_file3['iter3']['Exec'])}

    StageOut32Iter3 = {'mean':np.mean(data_file1['iter3']['StageOut'] + 
                                     data_file2['iter3']['StageOut'] +
                                     data_file3['iter3']['StageOut']),
                      'std':np.std(data_file1['iter3']['StageOut'] + 
                                   data_file2['iter3']['StageOut'] +
                                   data_file3['iter3']['StageOut'])}

    Done32Iter3 = {'mean':np.mean(data_file1['iter3']['Done'] + 
                                     data_file2['iter3']['Done'] +
                                     data_file3['iter3']['Done']),
                      'std':np.std(data_file1['iter3']['Done'] + 
                                   data_file2['iter3']['Done'] +
                                   data_file3['iter3']['Done'])}


    #---------------------------------------------------------------------------
    # 64 cores

    data_file1 = read_data('k-means-stampede-weak-64-2015-08-03T11:26:03.403402',64)
    data_file2 = read_data('k-means-stampede-weak-64-2015-08-03T11:52:24.299947',64)
    data_file3 = read_data('k-means-stampede-weak-64-2015-08-03T12:18:50.396744',64)

    StageIn64Iter1 = {'mean':np.mean(data_file1['iter1']['StageIn'] + 
                                     data_file2['iter1']['StageIn'] +
                                     data_file3['iter1']['StageIn']),
                      'std':np.std(data_file1['iter1']['StageIn'] + 
                                   data_file2['iter1']['StageIn'] +
                                   data_file3['iter1']['StageIn'])}

    Exec64Iter1 = {'mean':np.mean(data_file1['iter1']['Exec'] + 
                                     data_file2['iter1']['Exec'] +
                                     data_file3['iter1']['Exec']),
                      'std':np.std(data_file1['iter1']['Exec'] + 
                                   data_file2['iter1']['Exec'] +
                                   data_file3['iter1']['Exec'])}

    StageOut64Iter1 = {'mean':np.mean(data_file1['iter1']['StageOut'] + 
                                     data_file2['iter1']['StageOut'] +
                                     data_file3['iter1']['StageOut']),
                      'std':np.std(data_file1['iter1']['StageOut'] + 
                                   data_file2['iter1']['StageOut'] +
                                   data_file3['iter1']['StageOut'])}

    Done64Iter1 = {'mean':np.mean(data_file1['iter1']['Done'] + 
                                     data_file2['iter1']['Done'] +
                                     data_file3['iter1']['Done']),
                      'std':np.std(data_file1['iter1']['Done'] + 
                                   data_file2['iter1']['Done'] +
                                   data_file3['iter1']['Done'])}

    StageIn64Iter2 = {'mean':np.mean(data_file1['iter2']['StageIn'] + 
                                     data_file2['iter2']['StageIn'] +
                                     data_file3['iter2']['StageIn']),
                      'std':np.std(data_file1['iter2']['StageIn'] + 
                                   data_file2['iter2']['StageIn'] +
                                   data_file3['iter2']['StageIn'])}

    Exec64Iter2 = {'mean':np.mean(data_file1['iter2']['Exec'] + 
                                     data_file2['iter2']['Exec'] +
                                     data_file3['iter2']['Exec']),
                      'std':np.std(data_file1['iter2']['Exec'] + 
                                   data_file2['iter2']['Exec'] +
                                   data_file3['iter2']['Exec'])}

    StageOut64Iter2 = {'mean':np.mean(data_file1['iter2']['StageOut'] + 
                                     data_file2['iter2']['StageOut'] +
                                     data_file3['iter2']['StageOut']),
                      'std':np.std(data_file1['iter2']['StageOut'] + 
                                   data_file2['iter2']['StageOut'] +
                                   data_file3['iter2']['StageOut'])}

    Done64Iter2 = {'mean':np.mean(data_file1['iter2']['Done'] + 
                                     data_file2['iter2']['Done'] +
                                     data_file3['iter2']['Done']),
                      'std':np.std(data_file1['iter2']['Done'] + 
                                   data_file2['iter2']['Done'] +
                                   data_file3['iter2']['Done'])}

    StageIn64Iter3 = {'mean':np.mean(data_file1['iter3']['StageIn'] + 
                                     data_file2['iter3']['StageIn'] +
                                     data_file3['iter3']['StageIn']),
                      'std':np.std(data_file1['iter3']['StageIn'] + 
                                   data_file2['iter3']['StageIn'] +
                                   data_file3['iter3']['StageIn'])}

    Exec64Iter3 = {'mean':np.mean(data_file1['iter3']['Exec'] + 
                                     data_file2['iter3']['Exec'] +
                                     data_file3['iter3']['Exec']),
                      'std':np.std(data_file1['iter3']['Exec'] + 
                                   data_file2['iter3']['Exec'] +
                                   data_file3['iter3']['Exec'])}

    StageOut64Iter3 = {'mean':np.mean(data_file1['iter3']['StageOut'] + 
                                     data_file2['iter3']['StageOut'] +
                                     data_file3['iter3']['StageOut']),
                      'std':np.std(data_file1['iter3']['StageOut'] + 
                                   data_file2['iter3']['StageOut'] +
                                   data_file3['iter3']['StageOut'])}

    Done64Iter3 = {'mean':np.mean(data_file1['iter3']['Done'] + 
                                     data_file2['iter3']['Done'] +
                                     data_file3['iter3']['Done']),
                      'std':np.std(data_file1['iter3']['Done'] + 
                                   data_file2['iter3']['Done'] +
                                   data_file3['iter3']['Done'])}


    #---------------------------------------------------------------------------
    # 128 cores

    data_file1 = read_data('k-means-stampede-weak-128-2015-08-03T13:04:14.453031',128)
    data_file2 = read_data('k-means-stampede-weak-128-2015-08-03T13:49:56.231575',128)
    data_file3 = read_data('k-means-stampede-weak-128-2015-08-03T14:35:21.990210',128)

    StageIn128Iter1 = {'mean':np.mean(data_file1['iter1']['StageIn'] + 
                                     data_file2['iter1']['StageIn'] +
                                     data_file3['iter1']['StageIn']),
                      'std':np.std(data_file1['iter1']['StageIn'] + 
                                   data_file2['iter1']['StageIn'] +
                                   data_file3['iter1']['StageIn'])}

    Exec128Iter1 = {'mean':np.mean(data_file1['iter1']['Exec'] + 
                                     data_file2['iter1']['Exec'] +
                                     data_file3['iter1']['Exec']),
                      'std':np.std(data_file1['iter1']['Exec'] + 
                                   data_file2['iter1']['Exec'] +
                                   data_file3['iter1']['Exec'])}

    StageOut128Iter1 = {'mean':np.mean(data_file1['iter1']['StageOut'] + 
                                     data_file2['iter1']['StageOut'] +
                                     data_file3['iter1']['StageOut']),
                      'std':np.std(data_file1['iter1']['StageOut'] + 
                                   data_file2['iter1']['StageOut'] +
                                   data_file3['iter1']['StageOut'])}

    Done128Iter1 = {'mean':np.mean(data_file1['iter1']['Done'] + 
                                     data_file2['iter1']['Done'] +
                                     data_file3['iter1']['Done']),
                      'std':np.std(data_file1['iter1']['Done'] + 
                                   data_file2['iter1']['Done'] +
                                   data_file3['iter1']['Done'])}

    StageIn128Iter2 = {'mean':np.mean(data_file1['iter2']['StageIn'] + 
                                     data_file2['iter2']['StageIn'] +
                                     data_file3['iter2']['StageIn']),
                      'std':np.std(data_file1['iter2']['StageIn'] + 
                                   data_file2['iter2']['StageIn'] +
                                   data_file3['iter2']['StageIn'])}

    Exec128Iter2 = {'mean':np.mean(data_file1['iter2']['Exec'] + 
                                     data_file2['iter2']['Exec'] +
                                     data_file3['iter2']['Exec']),
                      'std':np.std(data_file1['iter2']['Exec'] + 
                                   data_file2['iter2']['Exec'] +
                                   data_file3['iter2']['Exec'])}

    StageOut128Iter2 = {'mean':np.mean(data_file1['iter2']['StageOut'] + 
                                     data_file2['iter2']['StageOut'] +
                                     data_file3['iter2']['StageOut']),
                      'std':np.std(data_file1['iter2']['StageOut'] + 
                                   data_file2['iter2']['StageOut'] +
                                   data_file3['iter2']['StageOut'])}

    Done128Iter2 = {'mean':np.mean(data_file1['iter2']['Done'] + 
                                     data_file2['iter2']['Done'] +
                                     data_file3['iter2']['Done']),
                      'std':np.std(data_file1['iter2']['Done'] + 
                                   data_file2['iter2']['Done'] +
                                   data_file3['iter2']['Done'])}

    StageIn128Iter3 = {'mean':np.mean(data_file1['iter3']['StageIn'] + 
                                     data_file2['iter3']['StageIn'] +
                                     data_file3['iter3']['StageIn']),
                      'std':np.std(data_file1['iter3']['StageIn'] + 
                                   data_file2['iter3']['StageIn'] +
                                   data_file3['iter3']['StageIn'])}

    Exec128Iter3 = {'mean':np.mean(data_file1['iter3']['Exec'] + 
                                     data_file2['iter3']['Exec'] +
                                     data_file3['iter3']['Exec']),
                      'std':np.std(data_file1['iter3']['Exec'] + 
                                   data_file2['iter3']['Exec'] +
                                   data_file3['iter3']['Exec'])}

    StageOut128Iter3 = {'mean':np.mean(data_file1['iter3']['StageOut'] + 
                                     data_file2['iter3']['StageOut'] +
                                     data_file3['iter3']['StageOut']),
                      'std':np.std(data_file1['iter3']['StageOut'] + 
                                   data_file2['iter3']['StageOut'] +
                                   data_file3['iter3']['StageOut'])}

    Done128Iter3 = {'mean':np.mean(data_file1['iter3']['Done'] + 
                                     data_file2['iter3']['Done'] +
                                     data_file3['iter3']['Done']),
                      'std':np.std(data_file1['iter3']['Done'] + 
                                   data_file2['iter3']['Done'] +
                                   data_file3['iter3']['Done'])}
    
    #---------------------------------------------------------------------------
    # 256 cores

    data_file1 = read_data('k-means-stampede-weak-256-2015-08-05T11:21:09.891033',256)
    data_file2 = read_data('k-means-stampede-weak-256-2015-08-05T12:53:21.617426',256)
    data_file3 = read_data('k-means-stampede-weak-256-2015-08-05T14:25:22.816574',256)

    StageIn256Iter1 = {'mean':np.mean(data_file1['iter1']['StageIn'] + 
                                     data_file2['iter1']['StageIn'] +
                                     data_file3['iter1']['StageIn']),
                      'std':np.std(data_file1['iter1']['StageIn'] + 
                                   data_file2['iter1']['StageIn'] +
                                   data_file3['iter1']['StageIn'])}

    Exec256Iter1 = {'mean':np.mean(data_file1['iter1']['Exec'] + 
                                     data_file2['iter1']['Exec'] +
                                     data_file3['iter1']['Exec']),
                      'std':np.std(data_file1['iter1']['Exec'] + 
                                   data_file2['iter1']['Exec'] +
                                   data_file3['iter1']['Exec'])}

    StageOut256Iter1 = {'mean':np.mean(data_file1['iter1']['StageOut'] + 
                                     data_file2['iter1']['StageOut'] +
                                     data_file3['iter1']['StageOut']),
                      'std':np.std(data_file1['iter1']['StageOut'] + 
                                   data_file2['iter1']['StageOut'] +
                                   data_file3['iter1']['StageOut'])}

    Done256Iter1 = {'mean':np.mean(data_file1['iter1']['Done'] + 
                                     data_file2['iter1']['Done'] +
                                     data_file3['iter1']['Done']),
                      'std':np.std(data_file1['iter1']['Done'] + 
                                   data_file2['iter1']['Done'] +
                                   data_file3['iter1']['Done'])}

    StageIn256Iter2 = {'mean':np.mean(data_file1['iter2']['StageIn'] + 
                                     data_file2['iter2']['StageIn'] +
                                     data_file3['iter2']['StageIn']),
                      'std':np.std(data_file1['iter2']['StageIn'] + 
                                   data_file2['iter2']['StageIn'] +
                                   data_file3['iter2']['StageIn'])}

    Exec256Iter2 = {'mean':np.mean(data_file1['iter2']['Exec'] + 
                                     data_file2['iter2']['Exec'] +
                                     data_file3['iter2']['Exec']),
                      'std':np.std(data_file1['iter2']['Exec'] + 
                                   data_file2['iter2']['Exec'] +
                                   data_file3['iter2']['Exec'])}

    StageOut256Iter2 = {'mean':np.mean(data_file1['iter2']['StageOut'] + 
                                     data_file2['iter2']['StageOut'] +
                                     data_file3['iter2']['StageOut']),
                      'std':np.std(data_file1['iter2']['StageOut'] + 
                                   data_file2['iter2']['StageOut'] +
                                   data_file3['iter2']['StageOut'])}

    Done256Iter2 = {'mean':np.mean(data_file1['iter2']['Done'] + 
                                     data_file2['iter2']['Done'] +
                                     data_file3['iter2']['Done']),
                      'std':np.std(data_file1['iter2']['Done'] + 
                                   data_file2['iter2']['Done'] +
                                   data_file3['iter2']['Done'])}

    StageIn256Iter3 = {'mean':np.mean(data_file1['iter3']['StageIn'] + 
                                     data_file2['iter3']['StageIn'] +
                                     data_file3['iter3']['StageIn']),
                      'std':np.std(data_file1['iter3']['StageIn'] + 
                                   data_file2['iter3']['StageIn'] +
                                   data_file3['iter3']['StageIn'])}

    Exec256Iter3 = {'mean':np.mean(data_file1['iter3']['Exec'] + 
                                     data_file2['iter3']['Exec'] +
                                     data_file3['iter3']['Exec']),
                      'std':np.std(data_file1['iter3']['Exec'] + 
                                   data_file2['iter3']['Exec'] +
                                   data_file3['iter3']['Exec'])}

    StageOut256Iter3 = {'mean':np.mean(data_file1['iter3']['StageOut'] + 
                                     data_file2['iter3']['StageOut'] +
                                     data_file3['iter3']['StageOut']),
                      'std':np.std(data_file1['iter3']['StageOut'] + 
                                   data_file2['iter3']['StageOut'] +
                                   data_file3['iter3']['StageOut'])}

    Done256Iter3 = {'mean':np.mean(data_file1['iter3']['Done'] + 
                                     data_file2['iter3']['Done'] +
                                     data_file3['iter3']['Done']),
                      'std':np.std(data_file1['iter3']['Done'] + 
                                   data_file2['iter3']['Done'] +
                                   data_file3['iter3']['Done'])}

    DoneIter3 = [ Done16Iter3['mean'],
              Done32Iter3['mean'],
              Done64Iter3['mean'],
              Done128Iter3['mean'],
              Done256Iter3['mean']]
 
    StageOutIter3 = [StageOut16Iter3['mean'],
                 StageOut32Iter3['mean'],
                 StageOut64Iter3['mean'],
                 StageOut128Iter3['mean'],
                 StageOut256Iter3['mean']]
 
    ExecIter3 = [Exec16Iter3['mean'],
              Exec32Iter3['mean'],
              Exec64Iter3['mean'],
              Exec128Iter3['mean'],
              Exec256Iter3['mean']]
   
    StageInIter3 = [StageIn16Iter3['mean'],
                 StageIn32Iter3['mean'],
                 StageIn64Iter3['mean'],
                 StageIn128Iter3['mean'],
                 StageIn256Iter3['mean']]
                 
    DoneIter2 = [ Done16Iter2['mean'],
              Done32Iter2['mean'],
              Done64Iter2['mean'],
              Done128Iter2['mean'],
              Done256Iter2['mean']]
 
    StageOutIter2 = [StageOut16Iter2['mean'],
                 StageOut32Iter2['mean'],
                 StageOut64Iter2['mean'],
                 StageOut128Iter2['mean'],
                 StageOut256Iter2['mean']]
 
    ExecIter2 = [Exec16Iter2['mean'],
              Exec32Iter2['mean'],
              Exec64Iter2['mean'],
              Exec128Iter2['mean'],
              Exec256Iter2['mean']]
   
    StageInIter2 = [StageIn16Iter2['mean'],
                 StageIn32Iter2['mean'],
                 StageIn64Iter2['mean'],
                 StageIn128Iter2['mean'],
                 StageIn256Iter2['mean']]
                 
    DoneIter1 = [ Done16Iter1['mean'],
              Done32Iter1['mean'],
              Done64Iter1['mean'],
              Done128Iter1['mean'],
              Done256Iter1['mean']]
 
    StageOutIter1 = [StageOut16Iter1['mean'],
                 StageOut32Iter1['mean'],
                 StageOut64Iter1['mean'],
                 StageOut128Iter1['mean'],
                 StageOut256Iter1['mean']]
 
    ExecIter1 = [Exec16Iter1['mean'],
              Exec32Iter1['mean'],
              Exec64Iter1['mean'],
              Exec128Iter1['mean'],
              Exec256Iter1['mean']]
   
    StageInIter1 = [StageIn16Iter1['mean'],
                 StageIn32Iter1['mean'],
                 StageIn64Iter1['mean'],
                 StageIn128Iter1['mean'],
                 StageIn256Iter1['mean']]
                 
                 
    DoneIter3Std = [ Done16Iter3['std'],
              Done32Iter3['std'],
              Done64Iter3['std'],
              Done128Iter3['std'],
              Done256Iter3['std']]
 
    StageOutIter3Std = [StageOut16Iter3['std'],
                 StageOut32Iter3['std'],
                 StageOut64Iter3['std'],
                 StageOut128Iter3['std'],
                 StageOut256Iter3['std']]
 
    ExecIter3Std = [Exec16Iter3['std'],
              Exec32Iter3['std'],
              Exec64Iter3['std'],
              Exec128Iter3['std'],
              Exec256Iter3['std']]
   
    StageInIter3Std = [StageIn16Iter3['std'],
                 StageIn32Iter3['std'],
                 StageIn64Iter3['std'],
                 StageIn128Iter3['std'],
                 StageIn256Iter3['std']]
                 
    DoneIter2Std = [ Done16Iter2['std'],
              Done32Iter2['std'],
              Done64Iter2['std'],
              Done128Iter2['std'],
              Done256Iter2['std']]
 
    StageOutIter2Std = [StageOut16Iter2['std'],
                 StageOut32Iter2['std'],
                 StageOut64Iter2['std'],
                 StageOut128Iter2['std'],
                 StageOut256Iter2['std']]
 
    ExecIter2Std = [Exec16Iter2['std'],
              Exec32Iter2['std'],
              Exec64Iter2['std'],
              Exec128Iter2['std'],
              Exec256Iter2['std']]
   
    StageInIter2Std = [StageIn16Iter2['std'],
                 StageIn32Iter2['std'],
                 StageIn64Iter2['std'],
                 StageIn128Iter2['std'],
                 StageIn256Iter2['std']]
                 
    DoneIter1Std = [ Done16Iter1['std'],
              Done32Iter1['std'],
              Done64Iter1['std'],
              Done128Iter1['std'],
              Done256Iter1['std']]
 
    StageOutIter1Std = [StageOut16Iter1['std'],
                 StageOut32Iter1['std'],
                 StageOut64Iter1['std'],
                 StageOut128Iter1['std'],
                 StageOut256Iter1['std']]
 
    ExecIter1Std = [Exec16Iter1['std'],
              Exec32Iter1['std'],
              Exec64Iter1['std'],
              Exec128Iter1['std'],
              Exec256Iter1['std']]
   
    StageInIter1Std = [StageIn16Iter1['std'],
                 StageIn32Iter1['std'],
                 StageIn64Iter1['std'],
                 StageIn128Iter1['std'],
                 StageIn256Iter1['std']]




    index = np.arange(5)
    width = 0.35
    opacity = 1.0

    FigPart112 = plt.bar(index,DoneIter3,width,yerr=DoneIter3Std,color='tomato',alpha=opacity)
    FigPart111 = plt.bar(index,StageOutIter3,width,yerr=StageOutIter3Std,color='crimson',alpha=opacity)
    FigPart110 = plt.bar(index,ExecIter3,width,yerr=ExecIter3Std,color='lawngreen',alpha=opacity)
    FigPart109 = plt.bar(index,StageInIter3,width,yerr=StageInIter3Std,color='gainsboro',alpha=opacity)
    FigPart108 = plt.bar(index,DoneIter2,width,yerr=DoneIter2Std,color='red',alpha=opacity)
    FigPart107 = plt.bar(index,StageOutIter2,width,yerr=StageOutIter2Std,color='deeppink',alpha=opacity)
    FigPart106 = plt.bar(index,ExecIter2,width,yerr=ExecIter2Std,color='yellowgreen',alpha=opacity)
    FigPart105 = plt.bar(index,StageInIter2 ,width,yerr=StageInIter2Std,color='darkgray',alpha=opacity)
    FigPart104 = plt.bar(index,DoneIter1,width,yerr=DoneIter1Std,color='brown',alpha=opacity)
    FigPart103 = plt.bar(index,StageOutIter1,width,yerr=StageOutIter1Std,color='crimson',alpha=opacity)
    FigPart102 = plt.bar(index,ExecIter1,width,yerr=ExecIter1Std,color='olive',alpha=opacity)
    FigPart101 = plt.bar(index,StageInIter1,width,yerr=StageInIter1Std,color='dimgrey',alpha=opacity)

    plt.legend((FigPart112,FigPart111,FigPart110,FigPart109,FigPart108,FigPart107,
                FigPart106,FigPart105,FigPart104,FigPart103,FigPart102,FigPart101),
               ('Done Iter3','StageOut Iter3','Exec Iter3','StageIn Iter3',
                'Done Iter2','StageOut Iter2','Exec Iter2','StageIn Iter2',
                'Done Iter1','StageOut Iter1','Exec Iter1','StageIn Iter1'),loc=0)
    plt.title('WeakScaling Characterization of K-Means RP implementation on' +\
              ' Stampede, RPv0.34')
    plt.grid(True)
    plt.xticks(index+0.5*width,('16','32','64','128','256'))
    plt.ylabel('Time in Secs')
    plt.xlabel('Number of Cores')
    plt.savefig('k-means-weak-scaling-stampede-RP034.png',dpi=800)
    plt.show()
