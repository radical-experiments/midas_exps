import numpy as np
import csv
import pandas as pd
import radical.pilot as rp
import radical.analytics as ra
import radical.utils as ru
import glob
import os


def profiles(path):

    json_files = glob.glob(path+'/*_32_*/*.json')
    sessions32=dict()
    for json_file in json_files:
        src = ''.join([x+'/' for x in json_file.split('/')[0:-1]])
        json      = ru.read_json(json_file)
        sid       = os.path.basename(json_file)[:-5]
        sessions32[sid] = ra.Session(sid=sid, stype='radical.pilot', src=src)

    json_files = glob.glob(path+'/*_64_*/*.json')
    sessions64=dict()
    for json_file in json_files:
        src = ''.join([x+'/' for x in json_file.split('/')[0:-1]])
        json      = ru.read_json(json_file)
        sid       = os.path.basename(json_file)[:-5]
        sessions64[sid] = ra.Session(sid=sid, stype='radical.pilot', src=src)

    json_files = glob.glob(path+'/*_128_*/*.json')
    sessions128=dict()
    for json_file in json_files:
        src = ''.join([x+'/' for x in json_file.split('/')[0:-1]])
        json      = ru.read_json(json_file)
        sid       = os.path.basename(json_file)[:-5]
        sessions128[sid] = ra.Session(sid=sid, stype='radical.pilot', src=src)

    json_files = glob.glob(path+'/*_256_*/*.json')
    sessions256=dict()
    for json_file in json_files:
        src = ''.join([x+'/' for x in json_file.split('/')[0:-1]])
        json      = ru.read_json(json_file)
        sid       = os.path.basename(json_file)[:-5]
        sessions256[sid] = ra.Session(sid=sid, stype='radical.pilot', src=src)

    RPexpsW = pd.DataFrame(columns=['Atoms','Cores','Run','RADICAL-Pilot Overhead','RADICAL-Pilot Edge Disc','RADICAL-Pilot DataMovement','RADICAL-Pilot ConnComp'])

    for sid,session in sessions32.iteritems():
        uid=list()
        for i in range(1,1025):
            uid.append('unit.%06d'%i)
        units = session.filter(uid=uid,etype='unit',inplace=False)
        pilot = session.filter(etype='pilot',inplace=False)
        compUnit = session.filter(uid='unit.001025',etype='unit',inplace=False)
        overhead = (np.min(units.timestamps(state=rp.AGENT_EXECUTING)) - pilot.timestamps(state=[rp.PMGR_ACTIVE]))[0]
        execution_time = np.max(units.timestamps(state=rp.AGENT_STAGING_OUTPUT_PENDING)) - np.min(units.timestamps(state=rp.AGENT_EXECUTING))
        data_movement = (compUnit.timestamps(state=rp.AGENT_EXECUTING) - np.max(units.timestamps(state=rp.AGENT_STAGING_OUTPUT_PENDING)))[0]
        connComp = compUnit.timestamps(state=rp.AGENT_STAGING_OUTPUT_PENDING)[0] - compUnit.timestamps(state=rp.AGENT_EXECUTING)[0]
        cores = 32
        run = int(sid.split('_')[-1])
        atoms = int((sid.split('_')[1]).split('K')[0])
        RPexpsW.loc[len(RPexpsW)] = [atoms,cores,run,overhead,execution_time,data_movement,connComp]


    for sid,session in sessions64.iteritems():
        uid=list()
        for i in range(1,1025):
            uid.append('unit.%06d'%i)
        units = session.filter(uid=uid,etype='unit',inplace=False)
        pilot = session.filter(etype='pilot',inplace=False)
        compUnit = session.filter(uid='unit.001025',etype='unit',inplace=False)
        overhead = (np.min(units.timestamps(state=rp.AGENT_EXECUTING)) - pilot.timestamps(state=[rp.PMGR_ACTIVE]))[0]
        execution_time = np.max(units.timestamps(state=rp.AGENT_STAGING_OUTPUT_PENDING)) - np.min(units.timestamps(state=rp.AGENT_EXECUTING))
        data_movement = (compUnit.timestamps(state=rp.AGENT_EXECUTING) - np.max(units.timestamps(state=rp.AGENT_STAGING_OUTPUT_PENDING)))[0]
        connComp = compUnit.timestamps(state=rp.AGENT_STAGING_OUTPUT_PENDING)[0] - compUnit.timestamps(state=rp.AGENT_EXECUTING)[0]
        cores = 64
        run = int(sid.split('_')[-1])
        atoms = int((sid.split('_')[1]).split('K')[0])
        RPexpsW.loc[len(RPexpsW)] = [atoms,cores,run,overhead,execution_time,data_movement,connComp]

    for sid,session in sessions128.iteritems():
        uid=list()
        for i in range(1,1025):
            uid.append('unit.%06d'%i)
        units = session.filter(uid=uid,etype='unit',inplace=False)
        pilot = session.filter(etype='pilot',inplace=False)
        compUnit = session.filter(uid='unit.001025',etype='unit',inplace=False)
        overhead = (np.min(units.timestamps(state=rp.AGENT_EXECUTING)) - pilot.timestamps(state=[rp.PMGR_ACTIVE]))[0]
        execution_time = np.max(units.timestamps(state=rp.AGENT_STAGING_OUTPUT_PENDING)) - np.min(units.timestamps(state=rp.AGENT_EXECUTING))
        data_movement = (compUnit.timestamps(state=rp.AGENT_EXECUTING) - np.max(units.timestamps(state=rp.AGENT_STAGING_OUTPUT_PENDING)))[0]
        connComp = compUnit.timestamps(state=rp.AGENT_STAGING_OUTPUT_PENDING)[0] - compUnit.timestamps(state=rp.AGENT_EXECUTING)[0]
        cores = 128
        run = int(sid.split('_')[-1])
        atoms = int((sid.split('_')[1]).split('K')[0])
        RPexpsW.loc[len(RPexpsW)] = [atoms,cores,run,overhead,execution_time,data_movement,connComp]
        
    for sid,session in sessions256.iteritems():
        uid=list()
        for i in range(1,1025):
            uid.append('unit.%06d'%i)
        units = session.filter(uid=uid,etype='unit',inplace=False)
        pilot = session.filter(etype='pilot',inplace=False)
        compUnit = session.filter(uid='unit.001025',etype='unit',inplace=False)
        overhead = (np.min(units.timestamps(state=rp.AGENT_EXECUTING)) - pilot.timestamps(state=[rp.PMGR_ACTIVE]))[0]
        execution_time = np.max(units.timestamps(state=rp.AGENT_STAGING_OUTPUT_PENDING)) - np.min(units.timestamps(state=rp.AGENT_EXECUTING))
        data_movement = (compUnit.timestamps(state=rp.AGENT_EXECUTING) - np.max(units.timestamps(state=rp.AGENT_STAGING_OUTPUT_PENDING)))[0]
        connComp = compUnit.timestamps(state=rp.AGENT_STAGING_OUTPUT_PENDING)[0] - compUnit.timestamps(state=rp.AGENT_EXECUTING)[0]
        cores = 256
        run = int(sid.split('_')[-1])
        atoms = int((sid.split('_')[1]).split('K')[0])
        RPexpsW.loc[len(RPexpsW)] = [atoms,cores,run,overhead,execution_time,data_movement,connComp]

    return RPexpsW