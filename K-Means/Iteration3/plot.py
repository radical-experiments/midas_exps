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

    return np.mean(final)


def read_data(file):
    try:
        CsvFile = open(file + ".csv", "r")
    except IOError:
        print 'Warning: unable to access template file...'

    timings = list()

    mapping_times_stagein = [[],[],[],[],[],[],[],[],[],[]]
    mapping_times_exec = [[],[],[],[],[],[],[],[],[],[]]
    mapping_times_stageout = [[],[],[],[],[],[],[],[],[],[]]
    mapping_times_done = [[],[],[],[],[],[],[],[],[],[]]

    reducing_times_stagein = [[],[],[],[],[],[],[],[],[],[]]
    reducing_times_exec = [[],[],[],[],[],[],[],[],[],[]]
    reducing_times_stageout = [[],[],[],[],[],[],[],[],[],[]]
    reducing_times_done = [[],[],[],[],[],[],[],[],[],[]]

    map_read=list()
    map_exec=list()
    map_write=list()
    reduce_read=list()
    reduce_exec=list()
    reduce_write=list()

    contents = CsvFile.readlines()
    CsvFile.close()

    zeropoint = 0

    for line in contents:
        RowContents = line.split(',')
        if RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Mapper-0'):
            mapping_times_stagein[0].append(float(RowContents[3]))
            mapping_times_exec[0].append(float(RowContents[5]))
            mapping_times_stageout[0].append(float(RowContents[6]))
            mapping_times_done[0].append(float(RowContents[7]))
            map_read.append(float(RowContents[8]))
            map_exec.append(float(RowContents[9]))
            map_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Reducer-0'):
            reducing_times_stagein[0].append(float(RowContents[3]))
            reducing_times_exec[0].append(float(RowContents[5]))
            reducing_times_stageout[0].append(float(RowContents[6]))
            reducing_times_done[0].append(float(RowContents[7]))
            reduce_read.append(float(RowContents[8]))
            reduce_exec.append(float(RowContents[9]))
            reduce_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Mapper-1'):
            mapping_times_stagein[1].append(float(RowContents[3]))
            mapping_times_exec[1].append(float(RowContents[5]))
            mapping_times_stageout[1].append(float(RowContents[6]))
            mapping_times_done[1].append(float(RowContents[7]))
            map_read.append(float(RowContents[8]))
            map_exec.append(float(RowContents[9]))
            map_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Reducer-1'):
            reducing_times_stagein[1].append(float(RowContents[3]))
            reducing_times_exec[1].append(float(RowContents[5]))
            reducing_times_stageout[1].append(float(RowContents[6]))
            reducing_times_done[1].append(float(RowContents[7])) 
            reduce_read.append(float(RowContents[8]))
            reduce_exec.append(float(RowContents[9]))
            reduce_write.append(float(RowContents[10]))       
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Mapper-2'):
            mapping_times_stagein[2].append(float(RowContents[3]))
            mapping_times_exec[2].append(float(RowContents[5]))
            mapping_times_stageout[2].append(float(RowContents[6]))
            mapping_times_done[2].append(float(RowContents[7]))
            map_read.append(float(RowContents[8]))
            map_exec.append(float(RowContents[9]))
            map_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Reducer-2'):
            reducing_times_stagein[2].append(float(RowContents[3]))
            reducing_times_exec[2].append(float(RowContents[5]))
            reducing_times_stageout[2].append(float(RowContents[6]))
            reducing_times_done[2].append(float(RowContents[7]))
            reduce_read.append(float(RowContents[8]))
            reduce_exec.append(float(RowContents[9]))
            reduce_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Mapper-3'):
            mapping_times_stagein[3].append(float(RowContents[3]))
            mapping_times_exec[3].append(float(RowContents[5]))
            mapping_times_stageout[3].append(float(RowContents[6]))
            mapping_times_done[3].append(float(RowContents[7]))
            map_read.append(float(RowContents[8]))
            map_exec.append(float(RowContents[9]))
            map_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Reducer-3'):
            reducing_times_stagein[3].append(float(RowContents[3]))
            reducing_times_exec[3].append(float(RowContents[5]))
            reducing_times_stageout[3].append(float(RowContents[6]))
            reducing_times_done[3].append(float(RowContents[7]))
            reduce_read.append(float(RowContents[8]))
            reduce_exec.append(float(RowContents[9]))
            reduce_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Mapper-4'):
            mapping_times_stagein[4].append(float(RowContents[3]))
            mapping_times_exec[4].append(float(RowContents[5]))
            mapping_times_stageout[4].append(float(RowContents[6]))
            mapping_times_done[4].append(float(RowContents[7]))
            map_read.append(float(RowContents[8]))
            map_exec.append(float(RowContents[9]))
            map_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Reducer-4'):
            reducing_times_stagein[4].append(float(RowContents[3]))
            reducing_times_exec[4].append(float(RowContents[5]))
            reducing_times_stageout[4].append(float(RowContents[6]))
            reducing_times_done[4].append(float(RowContents[7]))
            reduce_read.append(float(RowContents[8]))
            reduce_exec.append(float(RowContents[9]))
            reduce_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Mapper-5'):
            mapping_times_stagein[5].append(float(RowContents[3]))
            mapping_times_exec[5].append(float(RowContents[5]))
            mapping_times_stageout[5].append(float(RowContents[6]))
            mapping_times_done[5].append(float(RowContents[7]))
            map_read.append(float(RowContents[8]))
            map_exec.append(float(RowContents[9]))
            map_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Reducer-5'):
            reducing_times_stagein[5].append(float(RowContents[3]))
            reducing_times_exec[5].append(float(RowContents[5]))
            reducing_times_stageout[5].append(float(RowContents[6]))
            reducing_times_done[5].append(float(RowContents[7]))
            reduce_read.append(float(RowContents[8]))
            reduce_exec.append(float(RowContents[9]))
            reduce_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Mapper-6'):
            mapping_times_stagein[6].append(float(RowContents[3]))
            mapping_times_exec[6].append(float(RowContents[5]))
            mapping_times_stageout[6].append(float(RowContents[6]))
            mapping_times_done[6].append(float(RowContents[7]))
            map_read.append(float(RowContents[8]))
            map_exec.append(float(RowContents[9]))
            map_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Reducer-6'):
            reducing_times_stagein[6].append(float(RowContents[3]))
            reducing_times_exec[6].append(float(RowContents[5]))
            reducing_times_stageout[6].append(float(RowContents[6]))
            reducing_times_done[6].append(float(RowContents[7]))  
            reduce_read.append(float(RowContents[8]))
            reduce_exec.append(float(RowContents[9]))
            reduce_write.append(float(RowContents[10]))     
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Mapper-7'):
            mapping_times_stagein[7].append(float(RowContents[3]))
            mapping_times_exec[7].append(float(RowContents[5]))
            mapping_times_stageout[7].append(float(RowContents[6]))
            mapping_times_done[7].append(float(RowContents[7]))
            map_read.append(float(RowContents[8]))
            map_exec.append(float(RowContents[9]))
            map_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Reducer-7'):
            reducing_times_stagein[7].append(float(RowContents[3]))
            reducing_times_exec[7].append(float(RowContents[5]))
            reducing_times_stageout[7].append(float(RowContents[6]))
            reducing_times_done[7].append(float(RowContents[7]))
            reduce_read.append(float(RowContents[8]))
            reduce_exec.append(float(RowContents[9]))
            reduce_write.append(float(RowContents[10]))        
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Mapper-8'):
            mapping_times_stagein[8].append(float(RowContents[3]))
            mapping_times_exec[8].append(float(RowContents[5]))
            mapping_times_stageout[8].append(float(RowContents[6]))
            mapping_times_done[8].append(float(RowContents[7]))
            map_read.append(float(RowContents[8]))
            map_exec.append(float(RowContents[9]))
            map_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Reducer-8'):
            reducing_times_stagein[8].append(float(RowContents[3]))
            reducing_times_exec[8].append(float(RowContents[5]))
            reducing_times_stageout[8].append(float(RowContents[6]))
            reducing_times_done[8].append(float(RowContents[7]))
            reduce_read.append(float(RowContents[8]))
            reduce_exec.append(float(RowContents[9]))
            reduce_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Mapper-9'):
            mapping_times_stagein[9].append(float(RowContents[3]))
            mapping_times_exec[9].append(float(RowContents[5]))
            mapping_times_stageout[9].append(float(RowContents[6]))
            mapping_times_done[9].append(float(RowContents[7]))
            map_read.append(float(RowContents[8]))
            map_exec.append(float(RowContents[9]))
            map_write.append(float(RowContents[10]))
        elif RowContents[0].startswith('unit') and \
           RowContents[1].startswith('Reducer-9'):
            reducing_times_stagein[9].append(float(RowContents[3]))
            reducing_times_exec[9].append(float(RowContents[5]))
            reducing_times_stageout[9].append(float(RowContents[6]))
            reducing_times_done[9].append(float(RowContents[7]))
            reduce_read.append(float(RowContents[8]))
            reduce_exec.append(float(RowContents[9]))
            reduce_write.append(float(RowContents[10]))

    #---------------------------------------------------------------------------
    # Move Time Zero to the first stagein
    zeropoint = np.min(mapping_times_stagein[0])
    for i in range(0,10):
        StagingIn_map = transfer(mapping_times_stagein[i],zeropoint)
        Exec_map = transfer(mapping_times_exec[i],zeropoint)
        StagingOut_map = transfer(mapping_times_stageout[i],zeropoint)
        Done_map = transfer(mapping_times_done[i],zeropoint)
        StagingIn_reduce = transfer(reducing_times_stagein[i],zeropoint)
        Exec_reduce = transfer(reducing_times_exec[i],zeropoint)
        StagingOut_reduce = transfer(reducing_times_stageout[i],zeropoint)
        Done_reduce = transfer(reducing_times_done[i],zeropoint)

        timings.append({'map':{'StageIn':StagingIn_map,
                               'Exec':Exec_map,
                               'StageOut':StagingOut_map,
                               'Done':Done_map},
                        'reduce':{'StageIn':StagingIn_reduce,
                                  'Exec':Exec_reduce,
                                  'StageOut':StagingOut_reduce,
                                  'Done':Done_reduce}})

    return timings

if __name__=="__main__":


    #---------------------------------------------------------------------------
    # 96 cores
    
    data_file1 = read_data('k-means100K5H3d-1-96')
    data_file2 = read_data('k-means100K5H3d-2-96')
    data_file3 = read_data('k-means100K5H3d-3-96')

    StageIn96Map = [{'mean':np.mean([data_file1[i]['map']['StageIn'], 
                                     data_file2[i]['map']['StageIn'],
                                     data_file3[i]['map']['StageIn']]),
                     'std':np.std([data_file1[i]['map']['StageIn'], 
                                   data_file2[i]['map']['StageIn'],
                                   data_file3[i]['map']['StageIn']])} for i in range(0,10)]

    Exec96Map = [{'mean':np.mean([data_file1[i]['map']['Exec'], 
                                  data_file2[i]['map']['Exec'],
                                  data_file3[i]['map']['Exec']]),
                    'std':np.std([data_file1[i]['map']['Exec'], 
                                  data_file2[i]['map']['Exec'],
                                  data_file3[i]['map']['Exec']])} for i in range(0,10)]

    StageOut96Map = [{'mean':np.mean([data_file1[i]['map']['StageOut'], 
                                      data_file2[i]['map']['StageOut'],
                                      data_file3[i]['map']['StageOut']]),
                      'std':np.std([data_file1[i]['map']['StageOut'], 
                                    data_file2[i]['map']['StageOut'],
                                    data_file3[i]['map']['StageOut']])} for i in range(0,10)]

    Done96Map = [{'mean':np.mean([data_file1[i]['map']['Done'], 
                                 data_file2[i]['map']['Done'],
                                 data_file3[i]['map']['Done']]),
                 'std':np.std([data_file1[i]['map']['Done'], 
                               data_file2[i]['map']['Done'],
                               data_file3[i]['map']['Done']])} for i in range(0,10)]

    StageIn96Reduce = [{'mean':np.mean([data_file1[i]['reduce']['StageIn'], 
                                        data_file2[i]['reduce']['StageIn'],
                                        data_file3[i]['reduce']['StageIn']]),
                          'std':np.std([data_file1[i]['reduce']['StageIn'], 
                                        data_file2[i]['reduce']['StageIn'],
                                        data_file3[i]['reduce']['StageIn']])} for i in range(0,10)]

    Exec96Reduce = [{'mean':np.mean([data_file1[i]['reduce']['Exec'], 
                                    data_file2[i]['reduce']['Exec'],
                                    data_file3[i]['reduce']['Exec']]),
                      'std':np.std([data_file1[i]['reduce']['Exec'], 
                                    data_file2[i]['reduce']['Exec'],
                                    data_file3[i]['reduce']['Exec']])} for i in range(0,10)]

    StageOut96Reduce = [{'mean':np.mean([data_file1[i]['reduce']['StageOut'],
                                         data_file2[i]['reduce']['StageOut'],
                                         data_file3[i]['reduce']['StageOut']]),
                          'std':np.std([data_file1[i]['reduce']['StageOut'], 
                                        data_file2[i]['reduce']['StageOut'],
                                        data_file3[i]['reduce']['StageOut']])} for i in range(0,10)]

    Done96Reduce = [{'mean':np.mean([data_file1[i]['reduce']['Done'], 
                                   data_file2[i]['reduce']['Done'],
                                   data_file3[i]['reduce']['Done']]),
                      'std':np.std([data_file1[i]['reduce']['Done'], 
                                   data_file2[i]['reduce']['Done'],
                                   data_file3[i]['reduce']['Done']])} for i in range(0,10)]

    #---------------------------------------------------------------------------
    # 192 cores
    
    data_file1 = read_data('k-means100K5H3d-1-192')
    data_file2 = read_data('k-means100K5H3d-2-192')
    data_file3 = read_data('k-means100K5H3d-3-192')

    StageIn192Map = [{'mean':np.mean([data_file1[i]['map']['StageIn'], 
                                     data_file2[i]['map']['StageIn'],
                                     data_file3[i]['map']['StageIn']]),
                       'std':np.std([data_file1[i]['map']['StageIn'], 
                                     data_file2[i]['map']['StageIn'],
                                     data_file3[i]['map']['StageIn']])} for i in range(0,10)]

    Exec192Map = [{'mean':np.mean([data_file1[i]['map']['Exec'], 
                                  data_file2[i]['map']['Exec'],
                                  data_file3[i]['map']['Exec']]),
                    'std':np.std([data_file1[i]['map']['Exec'], 
                                  data_file2[i]['map']['Exec'],
                                  data_file3[i]['map']['Exec']])} for i in range(0,10)]

    StageOut192Map = [{'mean':np.mean([data_file1[i]['map']['StageOut'], 
                                      data_file2[i]['map']['StageOut'],
                                      data_file3[i]['map']['StageOut']]),
                      'std':np.std([data_file1[i]['map']['StageOut'], 
                                    data_file2[i]['map']['StageOut'],
                                    data_file3[i]['map']['StageOut']])} for i in range(0,10)]

    Done192Map = [{'mean':np.mean([data_file1[i]['map']['Done'], 
                                 data_file2[i]['map']['Done'],
                                 data_file3[i]['map']['Done']]),
                 'std':np.std([data_file1[i]['map']['Done'], 
                               data_file2[i]['map']['Done'],
                               data_file3[i]['map']['Done']])} for i in range(0,10)]

    StageIn192Reduce = [{'mean':np.mean([data_file1[i]['reduce']['StageIn'], 
                                        data_file2[i]['reduce']['StageIn'],
                                        data_file3[i]['reduce']['StageIn']]),
                          'std':np.std([data_file1[i]['reduce']['StageIn'], 
                                        data_file2[i]['reduce']['StageIn'],
                                        data_file3[i]['reduce']['StageIn']])} for i in range(0,10)]

    Exec192Reduce = [{'mean':np.mean([data_file1[i]['reduce']['Exec'], 
                                    data_file2[i]['reduce']['Exec'],
                                    data_file3[i]['reduce']['Exec']]),
                      'std':np.std([data_file1[i]['reduce']['Exec'], 
                                    data_file2[i]['reduce']['Exec'],
                                    data_file3[i]['reduce']['Exec']])} for i in range(0,10)]

    StageOut192Reduce = [{'mean':np.mean([data_file1[i]['reduce']['StageOut'],
                                         data_file2[i]['reduce']['StageOut'],
                                         data_file3[i]['reduce']['StageOut']]),
                          'std':np.std([data_file1[i]['reduce']['StageOut'], 
                                        data_file2[i]['reduce']['StageOut'],
                                        data_file3[i]['reduce']['StageOut']])} for i in range(0,10)]

    Done192Reduce = [{'mean':np.mean([data_file1[i]['reduce']['Done'], 
                                   data_file2[i]['reduce']['Done'],
                                   data_file3[i]['reduce']['Done']]),
                      'std':np.std([data_file1[i]['reduce']['Done'], 
                                   data_file2[i]['reduce']['Done'],
                                   data_file3[i]['reduce']['Done']])} for i in range(0,10)]

    #---------------------------------------------------------------------------
    # 384 cores
    
    data_file1 = read_data('k-means100K5H3d-1-384')
    data_file2 = read_data('k-means100K5H3d-2-384')
    data_file3 = read_data('k-means100K5H3d-3-384')

    StageIn384Map = [{'mean':np.mean([data_file1[i]['map']['StageIn'], 
                                     data_file2[i]['map']['StageIn'],
                                     data_file3[i]['map']['StageIn']]),
                     'std':np.std([data_file1[i]['map']['StageIn'], 
                                   data_file2[i]['map']['StageIn'],
                                   data_file3[i]['map']['StageIn']])} for i in range(0,10)]

    Exec384Map = [{'mean':np.mean([data_file1[i]['map']['Exec'], 
                                  data_file2[i]['map']['Exec'],
                                  data_file3[i]['map']['Exec']]),
                  'std':np.std([data_file1[i]['map']['Exec'], 
                                data_file2[i]['map']['Exec'],
                                data_file3[i]['map']['Exec']])} for i in range(0,10)]

    StageOut384Map = [{'mean':np.mean([data_file1[i]['map']['StageOut'], 
                                      data_file2[i]['map']['StageOut'],
                                      data_file3[i]['map']['StageOut']]),
                      'std':np.std([data_file1[i]['map']['StageOut'], 
                                    data_file2[i]['map']['StageOut'],
                                    data_file3[i]['map']['StageOut']])} for i in range(0,10)]

    Done384Map = [{'mean':np.mean([data_file1[i]['map']['Done'], 
                                 data_file2[i]['map']['Done'],
                                 data_file3[i]['map']['Done']]),
                 'std':np.std([data_file1[i]['map']['Done'], 
                               data_file2[i]['map']['Done'],
                               data_file3[i]['map']['Done']])} for i in range(0,10)]

    StageIn384Reduce = [{'mean':np.mean([data_file1[i]['reduce']['StageIn'], 
                                        data_file2[i]['reduce']['StageIn'],
                                        data_file3[i]['reduce']['StageIn']]),
                          'std':np.std([data_file1[i]['reduce']['StageIn'], 
                                        data_file2[i]['reduce']['StageIn'],
                                        data_file3[i]['reduce']['StageIn']])} for i in range(0,10)]

    Exec384Reduce = [{'mean':np.mean([data_file1[i]['reduce']['Exec'], 
                                    data_file2[i]['reduce']['Exec'],
                                    data_file3[i]['reduce']['Exec']]),
                      'std':np.std([data_file1[i]['reduce']['Exec'], 
                                    data_file2[i]['reduce']['Exec'],
                                    data_file3[i]['reduce']['Exec']])} for i in range(0,10)]

    StageOut384Reduce = [{'mean':np.mean([data_file1[i]['reduce']['StageOut'],
                                         data_file2[i]['reduce']['StageOut'],
                                         data_file3[i]['reduce']['StageOut']]),
                          'std':np.std([data_file1[i]['reduce']['StageOut'], 
                                        data_file2[i]['reduce']['StageOut'],
                                        data_file3[i]['reduce']['StageOut']])} for i in range(0,10)]

    Done384Reduce = [{'mean':np.mean([data_file1[i]['reduce']['Done'], 
                                   data_file2[i]['reduce']['Done'],
                                   data_file3[i]['reduce']['Done']]),
                      'std':np.std([data_file1[i]['reduce']['Done'], 
                                   data_file2[i]['reduce']['Done'],
                                   data_file3[i]['reduce']['Done']])} for i in range(0,10)]

#-------------------------------------------------------------------------------
#
    index = np.arange(3)
    width = 0.35
    opacity = 1.0

    for i in range(9,-1,-1):                 
        DoneReduce = [Done96Reduce[i]['mean'],Done192Reduce[i]['mean'],Done384Reduce[i]['mean']]
        StageOutReduce = [StageOut96Reduce[i]['mean'],StageOut192Reduce[i]['mean'],StageOut384Reduce[i]['mean']]
        ExecReduce = [Exec96Reduce[i]['mean'],Exec192Reduce[i]['mean'],Exec384Reduce[i]['mean']]
        StageInReduce = [StageIn96Reduce[i]['mean'],StageIn192Reduce[i]['mean'],StageIn384Reduce[i]['mean']]
        DoneMap = [ Done96Map[i]['mean'],Done192Map[i]['mean'],Done384Map[i]['mean']]
        StageOutMap = [StageOut96Map[i]['mean'],StageOut192Map[i]['mean'],StageOut384Map[i]['mean']]
        ExecMap = [Exec96Map[i]['mean'],Exec192Map[i]['mean'],Exec384Map[i]['mean']]
        StageInMap = [StageIn96Map[i]['mean'],StageIn192Map[i]['mean'],StageIn384Map[i]['mean']]
        DoneReduceStd = [ Done96Reduce[i]['std'],Done192Reduce[i]['std'],Done384Reduce[i]['std']]
        StageOutReduceStd = [StageOut96Reduce[i]['std'],StageOut192Reduce[i]['std'],StageOut384Reduce[i]['std']]
        ExecReduceStd = [Exec96Reduce[i]['std'],Exec192Reduce[i]['std'],Exec384Reduce[i]['std']]
        StageInReduceStd = [StageIn96Reduce[i]['std'],StageIn192Reduce[i]['std'],StageIn384Reduce[i]['std']]
        DoneMapStd = [ Done96Map[i]['std'],Done192Map[i]['std'],Done384Map[i]['std']]
        StageOutMapStd = [StageOut96Map[i]['std'],StageOut192Map[i]['std'],StageOut384Map[i]['std']]
        ExecMapStd = [Exec96Map[i]['std'],Exec192Map[i]['std'],Exec384Map[i]['std']]
        StageInMapStd = [StageIn96Map[i]['std'],StageIn192Map[i]['std'],StageIn384Map[i]['std']]

        FigPart108 = plt.bar(index,DoneReduce,width,yerr=DoneReduceStd,color='red',alpha=opacity)
        FigPart107 = plt.bar(index,StageOutReduce,width,yerr=StageOutReduceStd,color='deeppink',alpha=opacity)
        FigPart106 = plt.bar(index,ExecReduce,width,yerr=ExecReduceStd,color='yellowgreen',alpha=opacity)
        FigPart105 = plt.bar(index,StageInReduce ,width,yerr=StageInReduceStd,color='darkgray',alpha=opacity)
        FigPart104 = plt.bar(index,DoneMap,width,yerr=DoneMapStd,color='brown',alpha=opacity)
        FigPart103 = plt.bar(index,StageOutMap,width,yerr=StageOutMapStd,color='crimson',alpha=opacity)
        FigPart102 = plt.bar(index,ExecMap,width,yerr=ExecMapStd,color='olive',alpha=opacity)
        FigPart101 = plt.bar(index,StageInMap,width,yerr=StageInMapStd,color='dimgrey',alpha=opacity)

    plt.legend((FigPart108,FigPart107,FigPart106,FigPart105,
                FigPart104,FigPart103,FigPart102,FigPart101),
               ('Done Reduce','StageOut Reduce','Exec Reduce','StageIn Reduce',
                'Done Map','StageOut Map','Exec Map','StageIn Map'))
    plt.title('K-means Execution 10 Iteration 100K 3d points 500 clusters' +\
              ' Stampede, RPv0.35')
    plt.grid(True)
    plt.xticks(index+0.5*width,('96','192','384'))
    plt.ylabel('Time in Secs')
    plt.xlabel('Number of Cores')
    plt.savefig('K-Means10iter100K5H.png',dpi=800)
    plt.show()
