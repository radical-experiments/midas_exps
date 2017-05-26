import pandas as pd
import glob
def STDOUTreader(filename):
    with open(filename) as stdout:
        line=stdout.readlines()[-1]
        lineSplit=line.split(',')
        start_time=float(lineSplit[0])
        overhead=float(lineSplit[1])
        dataInit=float(lineSplit[2])
        adj_matrix=float(lineSplit[3])
        conncomp=float(lineSplit[4])
        Stop=float(lineSplit[5])
        return dataInit-start_time,adj_matrix-dataInit,Stop-adj_matrix,Stop-start_time

def STDOUTreader2(filename):
    with open(filename) as stdout:
        line=stdout.readlines()[-1]
        lineSplit=line.split(',')
        start_time=float(lineSplit[0])
        dataInit=float(lineSplit[1])
        conncomp=float(lineSplit[2])
        Stop=float(lineSplit[3])
        return dataInit-start_time,conncomp-dataInit,Stop-conncomp,Stop-start_time

def STDOUTreader2(filename):
    with open(filename) as stdout:
        line=stdout.readlines()[-1]
        lineSplit=line.split(',')
        start_time=float(lineSplit[0])
        dataInit=float(lineSplit[1])
        conncomp=float(lineSplit[2])
        Stop=float(lineSplit[3])
        return dataInit-start_time,conncomp-dataInit,Stop-conncomp,Stop-start_time

cores=[64,256,1024]
atoms=[131,262,524]
styles=['Br','Col','Pcc']
tries=[1,2,3]
columns=['Atom','Style','Cores','Run','Overhead','DataInit','AdjList','ConnComp','TotalTime','SessionName','JsonName']


ReducedCsv=pd.DataFrame(columns=columns)
for atom in atoms:
    for style in styles:
        for coreCount in cores:
            for Try in tries:
                if style=='Br':
                    session='SupSpBrAlO_%dKn_%d_1024_%d'%(atom,coreCount,Try)
                    print session
                    CSV=pd.read_csv('BroadCast/%s.csv'%session,sep=':',skipinitialspace=True,header=None,names=['State','Time'])
                    pilotOverhead=CSV['Time'][7]
                    DataInit,AdjList,ConnComp,Total=STDOUTreader('AppData/%s/unit.000000/STDOUT'%session)
                    AppFile=glob.glob('AppData/%s/unit.000000/app-*'%session)[0].split('/')[-1]
                    data=[atom,style,coreCount,Try,pilotOverhead,DataInit,AdjList,ConnComp,Total,session,AppFile]
                    ReducedCsv.loc[len(ReducedCsv)]=data
                if style=='Col':
                    session='SupSpColAlO_%dKn_%d_1024_%d'%(atom,coreCount,Try)
                    print session
                    CSV=pd.read_csv('Collect/%s.csv'%session,sep=':',skipinitialspace=True,header=None,names=['State','Time'])
                    pilotOverhead=CSV['Time'][7]
                    DataInit,AdjList,ConnComp,Total=STDOUTreader('AppData/%s/unit.000000/STDOUT'%session)
                    AppFile=glob.glob('AppData/%s/unit.000000/app-*'%session)[0].split('/')[-1]
                    data=[atom,style,coreCount,Try,pilotOverhead,DataInit,AdjList,ConnComp,Total,session,AppFile]
                    ReducedCsv.loc[len(ReducedCsv)]=data
                if style=='Pcc':
                    session='SupSpPccAlO_%dKn_%d_1024_%d'%(atom,coreCount,Try)
                    print session
                    CSV=pd.read_csv('ParCCScipy/%s.csv'%session,sep=':',skipinitialspace=True,header=None,names=['State','Time'])
                    pilotOverhead=CSV['Time'][7]
                    DataInit,AdjList,ConnComp,Total=STDOUTreader2('AppData/%s/unit.000000/STDOUT'%session)
                    AppFile=glob.glob('AppData/%s/unit.000000/app-*'%session)[0].split('/')[-1]
                    data=[atom,style,coreCount,Try,pilotOverhead,DataInit,AdjList,ConnComp,Total,session,AppFile]
                    ReducedCsv.loc[len(ReducedCsv)]=data

ReducedCsv.to_csv('SuperMic.csv')
