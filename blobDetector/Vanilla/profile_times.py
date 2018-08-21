import os

import pandas as pd
import numpy as np

from glob import glob
from math import ceil

import radical.pilot as rp
import radical.analytics as ra
import radical.utils as ru

from pprint import PrettyPrinter

pp = PrettyPrinter(indent=4).pprint

if __name__ == '__main__':

    session_range = '4[0-4]'
    session_patterns    = [ 'rp_blobDetector_24tasks_24cores_%s'   % session_range ,   # 1 node
                            'rp_blobDetector_48tasks_48cores_%s'   % session_range ,   # 2 nodes
                            'rp_blobDetector_96tasks_96cores_%s'   % session_range ,   # 4 nodes
                            'rp_blobDetector_192tasks_192cores_%s'  % session_range]    # 8 nodes

    frameworks  = ['RADICAL-Pilot' for x in session_patterns]
    node_counts = [1, 2, 4, 8]

    sessions_df  = pd.DataFrame(columns=['nodes', 
                                         'framework', 
                                         'duration_TTC', 
                                         'duration_Units', 
                                         'session'
                                        ]
                                )

    for session_pattern, framework, nodes in zip(session_patterns, frameworks, node_counts):

        session_names = glob(session_pattern)
        profile_names = list()

        for session_name in session_names:
            profile_names.extend(glob(os.path.join(session_name, '*.json')))

        for json_file in profile_names:
            print json_file
            
            try:
                source          = ''.join([x+'/' for x in json_file.split('/')[0:-1]])
                json            = ru.read_json(json_file)
                sid             = os.path.basename(json_file)[:-5]
                session         = ra.Session(sid=sid, stype='radical.pilot', src=source)
                units           = session.filter(etype='unit', inplace=False)
                duration_TTC    = units.ttc

                session_data    = {
                    'nodes'           : nodes,
                    'framework'       : framework,
                    'duration_TTC'    : duration_TTC,
                    'duration_Units'  : units.duration(event=[{ru.EVENT:'exec_start'},{ru.EVENT:'exec_stop'}]),
                    'json'            : json_file
                }
            except Exception as e:
                print e
                session_data = {
                    'nodes'           : nodes,
                    'framework'       : framework,
                    'json'            : json_file
                }
                pass

            sessions_df = sessions_df.append(session_data, ignore_index=True)


    sessions_df = sessions_df.reset_index().drop('index', axis=1)
    sessions_df.to_csv('blobdetector_rp_weak_40to44_new.csv')
    
    session_patterns = ['rp_blobDetector_192tasks_24cores_%s' % session_range,
                     'rp_blobDetector_192tasks_48cores_%s' % session_range,
                     'rp_blobDetector_192tasks_96cores_%s' % session_range,
                     'rp_blobDetector_192tasks_192cores_%s' % session_range]
    
    for session_pattern, framework, nodes in zip(session_patterns, frameworks, node_counts):

        session_names = glob(session_pattern)
        profile_names = list()

        for session_name in session_names:
            profile_names.extend(glob(os.path.join(session_name, '*.json')))

        for json_file in profile_names:
            print json_file
            
            try:
                source          = ''.join([x+'/' for x in json_file.split('/')[0:-1]])
                json            = ru.read_json(json_file)
                sid             = os.path.basename(json_file)[:-5]
                session         = ra.Session(sid=sid, stype='radical.pilot', src=source)
                units           = session.filter(etype='unit', inplace=False)
                duration_TTC    = units.ttc

                session_data    = {
                    'nodes'           : nodes,
                    'framework'       : framework,
                    'duration_TTC'    : duration_TTC,
                    'duration_Units'  : units.duration(event=[{ru.EVENT:'exec_start'},{ru.EVENT:'exec_stop'}]),
                    'json'            : json_file
                }
            except Exception as e:
                print e
                session_data = {
                    'nodes'           : nodes,
                    'framework'       : framework,
                    'json'            : json_file
                }
                pass

            sessions_df = sessions_df.append(session_data, ignore_index=True)


    sessions_df = sessions_df.reset_index().drop('index', axis=1)
    sessions_df.to_csv('blobdetector_rp_strong_40to44_new.csv')
