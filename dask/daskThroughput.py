#!/usr/bin/env python2
# -*- coding: utf-8 -*-
"""
Created on Fri Mar 31 11:31:26 2017

@author: iparask
"""

# Imports!!
import numpy as np
import matplotlib.pyplot as plt
import pandas

#%% Function Definitions
def DaskProfReader(filename):
    filename = open(filename,'r')
    timestamps=list()
    for line in filename:
        for item in line.split():
            if item.startswith('start_time'):
                timestamp1=float(item.split('=')[1].split(',')[0])
            elif item.startswith('end_time'):
                timestamp2=float(item.split('=')[1].split(',')[0])
        timestamps.append([timestamp1,timestamp2])
    
    filename.close()
    
    return np.array(timestamps)

def SchedulerDelay(profiles):
    delays = np.array([])
    for profile in profiles:
        start_times = profile[:,0]
        start_times.sort()
        start_times = start_times-start_times[0]
        delays = np.append(delays,start_times[0:-1])
        
    return delays

def SchedulerDelayDist(profiles):
    delays = np.array([])
    
    for profile in profiles:
        exec_start = profile[0][0]
        start_times = profile[1][:,0]
        start_times.sort()
        start_times=start_times-exec_start
        delays = np.append(delays,start_times)
    
    return delays



#%% Data Read

# Dask Distributed
profiles_dist_16=list()
profiles_dist_32=list()
profiles_dist_48=list()
profiles_dist_64=list()
for i in range(0,10):
    profiles_dist_16.append(np.load('Stampede/Throughput/timingsT_16c_%02d.npz.npy'%(i+1)))
    profiles_dist_32.append(np.load('Stampede/Throughput/timingsT_32c_%02d.npz.npy'%(i+1)))
    profiles_dist_48.append(np.load('Stampede/Throughput/timingsT_48c_%02d.npz.npy'%(i+1)))
    profiles_dist_64.append(np.load('Stampede/Throughput/timingsT_64c_%02d.npz.npy'%(i+1)))

# Dask Distributed
profiles_dist_16_1t=list()
profiles_dist_32_1t=list()
profiles_dist_48_1t=list()
profiles_dist_64_1t=list()
for i in range(0,10):
    profiles_dist_16_1t.append(np.load('Stampede/Throughput/timingsT_16c_1t_%02d.npz.npy'%(i+1)))
    profiles_dist_32_1t.append(np.load('Stampede/Throughput/timingsT_32c_1t_%02d.npz.npy'%(i+1)))
    profiles_dist_48_1t.append(np.load('Stampede/Throughput/timingsT_48c_1t_%02d.npz.npy'%(i+1)))
    profiles_dist_64_1t.append(np.load('Stampede/Throughput/timingsT_64c_1t_%02d.npz.npy'%(i+1)))

# Dask Multiprocessing
profiles_multi=list()

for i in range(0,8):
    profiles_multi.append(DaskProfReader('Stampede/Throughput/multiprocT_prof%02d'%i))

# Dask Threading
profiles_thread=list()

for i in range(0,8):
    profiles_thread.append(DaskProfReader('Stampede/Throughput/threadedT_prof%d'%i))
    
#%% Data Shaping

threadedDelay = SchedulerDelay(profiles_thread)

multiprocDelay = SchedulerDelay(profiles_multi)

distDelay_16 = SchedulerDelayDist(profiles_dist_16)
distDelay_32 = SchedulerDelayDist(profiles_dist_32)
distDelay_48 = SchedulerDelayDist(profiles_dist_48)
distDelay_64 = SchedulerDelayDist(profiles_dist_64)

distDelay_16_1t = SchedulerDelayDist(profiles_dist_16_1t)
distDelay_32_1t = SchedulerDelayDist(profiles_dist_32_1t)
distDelay_48_1t = SchedulerDelayDist(profiles_dist_48_1t)
distDelay_64_1t = SchedulerDelayDist(profiles_dist_64_1t)

multiprocDelay = multiprocDelay.reshape(8,100000)
threadedDelay = threadedDelay.reshape(8,100000)
distDelay_16 = distDelay_16.reshape(10,100000)
distDelay_32 = distDelay_32.reshape(10,100000)
distDelay_48 = distDelay_48.reshape(10,100000)
distDelay_64 = distDelay_64.reshape(10,100000)
distDelay_16_1t = distDelay_16_1t.reshape(10,100000)
distDelay_32_1t = distDelay_32_1t.reshape(10,100000)
distDelay_48_1t = distDelay_48_1t.reshape(10,100000)
distDelay_64_1t = distDelay_64_1t.reshape(10,100000)

#%% Plots

plt.figure()
for i in range(0,8):
   plt.plot(range(0,100000),threadedDelay[i,:])
   

plt.figure()
for i in range(0,8):
    plt.plot(range(0,100000),multiprocDelay[i,:])
    
plt.figure()
for i in range(0,10):
    plt.plot(range(0,100000),distDelay_16[i,:])
    
plt.figure()
for i in range(0,10):
    plt.plot(range(0,100000),distDelay_32[i,:])
    
plt.figure()
for i in range(0,10):
    plt.plot(range(0,100000),distDelay_48[i,:])
    
plt.figure()
for i in range(0,10):
    plt.plot(range(0,100000),distDelay_64[i,:])
    
plt.figure()
for i in range(0,10):
    plt.plot(range(0,100000),distDelay_16_1t[i,:])
    
plt.figure()
for i in range(0,10):
    plt.plot(range(0,100000),distDelay_32_1t[i,:])
    
plt.figure()
for i in range(0,10):
    plt.plot(range(0,100000),distDelay_48_1t[i,:])
    
plt.figure()
for i in range(0,10):
    plt.plot(range(0,100000),distDelay_64_1t[i,:])
    