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


def read_data(file):
    try:
        CsvFile = open(file + ".csv", "r")
    except IOError:
        print 'Warning: unable to access template file...'

    mapping_times_stagein_1 = list()
    mapping_times_exec_1 = list()
    mapping_times_stageout_1 = list()
    mapping_times_done_1 = list()

    reducing_times_stagein = list()
    reducing_times_exec = list()
    reducing_times_stageout = list()
    reducing_times_done = list()

    contents = CsvFile.readlines()
    CsvFile.close()

    for line in contents:
        RowContents = line.split(',')

        if RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Mapper'):
            mapping_times_stagein_1.append(float(RowContents[3]))
            mapping_times_exec_1.append(float(RowContents[5]))
            mapping_times_stageout_1.append(float(RowContents[6]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Reducer'):
            reducing_times_stagein.append(float(RowContents[3]))
            reducing_times_exec.append(float(RowContents[5]))
            reducing_times_stageout.append(float(RowContents[6]))

    #---------------------------------------------------------------------------
    # Move Time Zero to the first stagein
    zeropoint = 0
    StagingIn_map1 = transfer(mapping_times_stagein_1,zeropoint)
    Exec_map1 = transfer(mapping_times_exec_1,zeropoint)
    StagingOut_map1 = transfer(mapping_times_stageout_1,zeropoint)
    #Done_map = transfer(mapping_times_done_1,zeropoint)

    StagingIn_reduce1 = transfer(reducing_times_stagein,zeropoint)
    Exec_reduce1 = transfer(reducing_times_exec,zeropoint)
    StagingOut_reduce1 = transfer(reducing_times_stageout,zeropoint)
    #Done_reduce1 = transfer(reducing_times_done,zeropoint)

    return {'map1':{'StageIn':StagingIn_map1,
                     'Exec':Exec_map1,
                     'StageOut':StagingOut_map1},
                     #'Done':Done_map1},
            'reduce1':{'StageIn':StagingIn_reduce1,
                     'Exec':Exec_reduce1,
                     'StageOut':StagingOut_reduce1}#,
                     #'Done':Done_reduce1}
            }

if __name__=="__main__":


    #---------------------------------------------------------------------------
    # 24 cores
    
    data_file1 = read_data('k-means10M5k2d-24-2015-08-27T18:47:35.264628')
    data_file2 = read_data('k-means10M5k2d-24-2015-08-28T04:20:15.857058')
    data_file3 = read_data('k-means10M5k2d-24-2015-08-28T11:26:43.653461')

    StageIn24Map1 = {'mean':np.mean(data_file1['map1']['StageIn'] + 
                                     data_file2['map1']['StageIn'] +
                                     data_file3['map1']['StageIn']),
                      'std':np.std(data_file1['map1']['StageIn'] + 
                                   data_file2['map1']['StageIn'] +
                                   data_file3['map1']['StageIn'])}

    Exec24Map1 = {'mean':np.mean(data_file1['map1']['Exec'] + 
                                     data_file2['map1']['Exec'] +
                                     data_file3['map1']['Exec']),
                      'std':np.std(data_file1['map1']['Exec'] + 
                                   data_file2['map1']['Exec'] +
                                   data_file3['map1']['Exec'])}

    StageOut24Map1 = {'mean':np.mean(data_file1['map1']['StageOut'] + 
                                     data_file2['map1']['StageOut'] +
                                     data_file3['map1']['StageOut']),
                      'std':np.std(data_file1['map1']['StageOut'] + 
                                   data_file2['map1']['StageOut'] +
                                   data_file3['map1']['StageOut'])}

    #Done24Map1 = {'mean':np.mean(data_file1['map1']['Done'] + 
    #                                 data_file2['map1']['Done'] +
    #                                 data_file3['map1']['Done']),
    #                  'std':np.std(data_file1['map1']['Done'] + 
    #                               data_file2['map1']['Done'] +
    #                               data_file3['map1']['Done'])}

    StageIn24Reduce1 = {'mean':np.mean(data_file1['reduce1']['StageIn'] + 
                                     data_file2['reduce1']['StageIn'] +
                                     data_file3['reduce1']['StageIn']),
                      'std':np.std(data_file1['reduce1']['StageIn'] + 
                                   data_file2['reduce1']['StageIn'] +
                                   data_file3['reduce1']['StageIn'])}

    Exec24Reduce1 = {'mean':np.mean(data_file1['reduce1']['Exec'] + 
                                     data_file2['reduce1']['Exec'] +
                                     data_file3['reduce1']['Exec']),
                      'std':np.std(data_file1['reduce1']['Exec'] + 
                                   data_file2['reduce1']['Exec'] +
                                   data_file3['reduce1']['Exec'])}

    StageOut24Reduce1 = {'mean':np.mean(data_file1['reduce1']['StageOut'] + 
                                     data_file2['reduce1']['StageOut'] +
                                     data_file3['reduce1']['StageOut']),
                      'std':np.std(data_file1['reduce1']['StageOut'] + 
                                   data_file2['reduce1']['StageOut'] +
                                   data_file3['reduce1']['StageOut'])}

    #Done24Reduce1 = {'mean':np.mean(data_file1['reduce1']['Done'] + 
    #                                 data_file2['reduce1']['Done'] +
    #                                 data_file3['reduce1']['Done']),
    #                  'std':np.std(data_file1['reduce1']['Done'] + 
    #                               data_file2['reduce1']['Done'] +
    #                               data_file3['reduce1']['Done'])}

    #---------------------------------------------------------------------------
    # 48 cores
    
    data_file1 = read_data('k-means10M5k2d-48-2015-08-27T04:46:09.238939')
    data_file2 = read_data('k-means10M5k2d-48-2015-08-27T08:43:20.224893')
    data_file3 = read_data('k-means10M5k2d-48-2015-08-27T12:07:44.630650')

    StageIn48Map1 = {'mean':np.mean(data_file1['map1']['StageIn'] + 
                                     data_file2['map1']['StageIn'] +
                                     data_file3['map1']['StageIn']),
                      'std':np.std(data_file1['map1']['StageIn'] + 
                                   data_file2['map1']['StageIn'] +
                                   data_file3['map1']['StageIn'])}

    Exec48Map1 = {'mean':np.mean(data_file1['map1']['Exec'] + 
                                     data_file2['map1']['Exec'] +
                                     data_file3['map1']['Exec']),
                      'std':np.std(data_file1['map1']['Exec'] + 
                                   data_file2['map1']['Exec'] +
                                   data_file3['map1']['Exec'])}

    StageOut48Map1 = {'mean':np.mean(data_file1['map1']['StageOut'] + 
                                     data_file2['map1']['StageOut'] +
                                     data_file3['map1']['StageOut']),
                      'std':np.std(data_file1['map1']['StageOut'] + 
                                   data_file2['map1']['StageOut'] +
                                   data_file3['map1']['StageOut'])}

    #Done48Map1 = {'mean':np.mean(data_file1['map1']['Done'] + 
    #                                 data_file2['map1']['Done'] +
    #                                 data_file3['map1']['Done']),
    #                  'std':np.std(data_file1['map1']['Done'] + 
    #                               data_file2['map1']['Done'] +
    #                               data_file3['map1']['Done'])}

    StageIn48Reduce1 = {'mean':np.mean(data_file1['reduce1']['StageIn'] + 
                                     data_file2['reduce1']['StageIn'] +
                                     data_file3['reduce1']['StageIn']),
                      'std':np.std(data_file1['reduce1']['StageIn'] + 
                                   data_file2['reduce1']['StageIn'] +
                                   data_file3['reduce1']['StageIn'])}

    Exec48Reduce1 = {'mean':np.mean(data_file1['reduce1']['Exec'] + 
                                     data_file2['reduce1']['Exec'] +
                                     data_file3['reduce1']['Exec']),
                      'std':np.std(data_file1['reduce1']['Exec'] + 
                                   data_file2['reduce1']['Exec'] +
                                   data_file3['reduce1']['Exec'])}

    StageOut48Reduce1 = {'mean':np.mean(data_file1['reduce1']['StageOut'] + 
                                     data_file2['reduce1']['StageOut'] +
                                     data_file3['reduce1']['StageOut']),
                      'std':np.std(data_file1['reduce1']['StageOut'] + 
                                   data_file2['reduce1']['StageOut'] +
                                   data_file3['reduce1']['StageOut'])}

    #Done48Reduce1 = {'mean':np.mean(data_file1['reduce1']['Done'] + 
    #                                 data_file2['reduce1']['Done'] +
    #                                 data_file3['reduce1']['Done']),
    #                  'std':np.std(data_file1['reduce1']['Done'] + 
    #                               data_file2['reduce1']['Done'] +
    #                               data_file3['reduce1']['Done'])}


    #---------------------------------------------------------------------------
    # 96 cores

    data_file1 = read_data('k-means10M5k2d-96-2015-08-26T18:51:08.777095')
    data_file2 = read_data('k-means10M5k2d-96-2015-08-26T20:42:34.947366')
    data_file3 = read_data('k-means10M5k2d-96-2015-08-26T23:51:59.479563')

    StageIn96Map1 = {'mean':np.mean(data_file1['map1']['StageIn'] + 
                                     data_file2['map1']['StageIn'] +
                                     data_file3['map1']['StageIn']),
                      'std':np.std(data_file1['map1']['StageIn'] + 
                                   data_file2['map1']['StageIn'] +
                                   data_file3['map1']['StageIn'])}

    Exec96Map1 = {'mean':np.mean(data_file1['map1']['Exec'] + 
                                     data_file2['map1']['Exec'] +
                                     data_file3['map1']['Exec']),
                      'std':np.std(data_file1['map1']['Exec'] + 
                                   data_file2['map1']['Exec'] +
                                   data_file3['map1']['Exec'])}

    StageOut96Map1 = {'mean':np.mean(data_file1['map1']['StageOut'] + 
                                     data_file2['map1']['StageOut'] +
                                     data_file3['map1']['StageOut']),
                      'std':np.std(data_file1['map1']['StageOut'] + 
                                   data_file2['map1']['StageOut'] +
                                   data_file3['map1']['StageOut'])}

    #Done96Map1 = {'mean':np.mean(data_file1['map1']['Done'] + 
    #                                 data_file2['map1']['Done'] +
    #                                 data_file3['map1']['Done']),
    #                  'std':np.std(data_file1['map1']['Done'] + 
    #                               data_file2['map1']['Done'] +
    #                               data_file3['map1']['Done'])}

    StageIn96Reduce1 = {'mean':np.mean(data_file1['reduce1']['StageIn'] + 
                                     data_file2['reduce1']['StageIn'] +
                                     data_file3['reduce1']['StageIn']),
                      'std':np.std(data_file1['reduce1']['StageIn'] + 
                                   data_file2['reduce1']['StageIn'] +
                                   data_file3['reduce1']['StageIn'])}

    Exec96Reduce1 = {'mean':np.mean(data_file1['reduce1']['Exec'] + 
                                     data_file2['reduce1']['Exec'] +
                                     data_file3['reduce1']['Exec']),
                      'std':np.std(data_file1['reduce1']['Exec'] + 
                                   data_file2['reduce1']['Exec'] +
                                   data_file3['reduce1']['Exec'])}

    StageOut96Reduce1 = {'mean':np.mean(data_file1['reduce1']['StageOut'] + 
                                     data_file2['reduce1']['StageOut'] +
                                     data_file3['reduce1']['StageOut']),
                      'std':np.std(data_file1['reduce1']['StageOut'] + 
                                   data_file2['reduce1']['StageOut'] +
                                   data_file3['reduce1']['StageOut'])}

    #Done96Reduce1 = {'mean':np.mean(data_file1['reduce1']['Done'] + 
    #                                 data_file2['reduce1']['Done'] +
    #                                 data_file3['reduce1']['Done']),
    #                  'std':np.std(data_file1['reduce1']['Done'] + 
    #                               data_file2['reduce1']['Done'] +
    #                               data_file3['reduce1']['Done'])}

#-------------------------------------------------------------------------------
#
                 
    #DoneReduce1 = [ Done24Reduce1['mean'],
    #          Done48Reduce1['mean'],
    #          Done96Reduce1['mean']]
 
    StageOutReduce1 = [StageOut24Reduce1['mean'],
                 StageOut48Reduce1['mean'],
                 StageOut96Reduce1['mean']]
 
    ExecReduce1 = [Exec24Reduce1['mean'],
              Exec48Reduce1['mean'],
              Exec96Reduce1['mean']]
   
    StageInReduce1 = [StageIn24Reduce1['mean'],
                 StageIn48Reduce1['mean'],
                 StageIn96Reduce1['mean']]
                 
    #DoneMap1 = [ Done24Map1['mean'],
    #          Done48Map1['mean'],
    #          Done96Map1['mean']]
 
    StageOutMap1 = [StageOut24Map1['mean'],
                 StageOut48Map1['mean'],
                 StageOut96Map1['mean']]
 
    ExecMap1 = [Exec24Map1['mean'],
              Exec48Map1['mean'],
              Exec96Map1['mean']]
   
    StageInMap1 = [StageIn24Map1['mean'],
                 StageIn48Map1['mean'],
                 StageIn96Map1['mean']]
                 
    #DoneReduce1Std = [ Done24Reduce1['std'],
    #          Done48Reduce1['std'],
    #          Done96Reduce1['std']]
 
    StageOutReduce1Std = [StageOut24Reduce1['std'],
                 StageOut48Reduce1['std'],
                 StageOut96Reduce1['std']]
 
    ExecReduce1Std = [Exec24Reduce1['std'],
              Exec48Reduce1['std'],
              Exec96Reduce1['std']]
   
    StageInReduce1Std = [StageIn24Reduce1['std'],
                 StageIn48Reduce1['std'],
                 StageIn96Reduce1['std']]
                 
    #DoneMap1Std = [ Done24Map1['std'],
    #          Done48Map1['std'],
    #          Done96Map1['std']]
 
    StageOutMap1Std = [StageOut24Map1['std'],
                 StageOut48Map1['std'],
                 StageOut96Map1['std']]
 
    ExecMap1Std = [Exec24Map1['std'],
              Exec48Map1['std'],
              Exec96Map1['std']]
   
    StageInMap1Std = [StageIn24Map1['std'],
                 StageIn48Map1['std'],
                 StageIn96Map1['std']]




    index = np.arange(3)
    width = 0.35
    opacity = 1.0

    #FigPart108 = plt.bar(index,DoneReduce1,width,yerr=DoneReduce1Std,color='red',alpha=opacity)
    FigPart107 = plt.bar(index,StageOutReduce1,width,yerr=StageOutReduce1Std,color='deeppink',alpha=opacity)
    FigPart106 = plt.bar(index,ExecReduce1,width,yerr=ExecReduce1Std,color='yellowgreen',alpha=opacity)
    FigPart105 = plt.bar(index,StageInReduce1 ,width,yerr=StageInReduce1Std,color='darkgray',alpha=opacity)
    #FigPart104 = plt.bar(index,DoneMap1,width,yerr=DoneMap1Std,color='brown',alpha=opacity)
    FigPart103 = plt.bar(index,StageOutMap1,width,yerr=StageOutMap1Std,color='crimson',alpha=opacity)
    FigPart102 = plt.bar(index,ExecMap1,width,yerr=ExecMap1Std,color='olive',alpha=opacity)
    FigPart101 = plt.bar(index,StageInMap1,width,yerr=StageInMap1Std,color='dimgrey',alpha=opacity)

    plt.legend((FigPart107,
                FigPart106,FigPart105,FigPart103,FigPart102,FigPart101),
               ('Exec Reduce1','StageIn Reduce1','New Reduce1',
                'Exec Map1','StageIn Map1','New Map1'))
    plt.title('K-means Execution 1 Iteration 10M 2d points 5K clusters' +\
              ' Stampede, RPv0.34')
    plt.grid(True)
    plt.xticks(index+0.5*width,('24','48','96'))
    plt.ylabel('Time in Secs')
    plt.xlabel('Number of Cores')
    plt.savefig('K-Means1iter10M5K.png',dpi=800)
    plt.show()
