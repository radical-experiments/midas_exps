import sys
import numpy as np
from pyspark import SparkContext
from datetime import datetime
import time

def inc(data):

    time.sleep(0)
    return 0

if __name__=="__main__":


    for i in range(0,10):
        sc = SparkContext(appName="ThroughputTest")
        a=range(0 ,100000)
        dist_Matrix = sc.parallelize(a,len(a))
        test = dist_Matrix.map(inc)
        test.collect()
        sc.stop()
