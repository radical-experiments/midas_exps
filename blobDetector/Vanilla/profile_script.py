import pandas as pd
import radical.pilot as rp
import radical.analytics as ra
import radical.utils as ru
from glob import glob
import os
import numpy as np

from pprint import PrettyPrinter

pp = PrettyPrinter(indent=4).pprint

if __name__ == '__main__':

    # patterns for strong scaling
    strong_patterns = [ 'rp_watershed_192tasks_24cores_2?',   # 1 nodes
                        'rp_watershed_192tasks_48cores_2?',   # 2 nodes
                        'rp_watershed_192tasks_96cores_2?',   # 4 nodes
                        'rp_watershed_192tasks_192cores_2?']  # 8 nodes

    # patterns for weak_patterns scaling
    weak_patterns   = [ 'rp_watershed_24tasks_24cores_2?' ,   # 1 node
                        'rp_watershed_48tasks_48cores_2?' ,   # 2 nodes
                        'rp_watershed_96tasks_96cores_2?' ,   # 4 nodes
                        'rp_watershed_192tasks_192cores_2?']   # 8 nodes

    session_patterns = weak_patterns

    frameworks  = ['RADICAL-Pilot' for x in session_patterns]
    node_counts = [1, 2, 4, 8]

    profile_df  = pd.DataFrame(columns=['Nodes', 'Framework', 'Duration', 'Json'])

    for session_pattern, framework, nodes in zip(session_patterns, frameworks, node_counts):

        session_names = glob(session_pattern)
        profile_names = list()

        for session_name in session_names:
            profile_names.extend(glob(os.path.join(session_name, '*.json')))

        for json_file in profile_names:
            print json_file
            
            try:
                source      = ''.join([x+'/' for x in json_file.split('/')[0:-1]])
                json        = ru.read_json(json_file)
                sid         = os.path.basename(json_file)[:-5]
                session     = ra.Session(sid=sid, stype='radical.pilot', src=source)
                units       = session.filter(etype='unit', inplace=False)
                dur         = units.ttc
                session_data = {
                    'Nodes'       : nodes,
                    'Framework'   : framework,
                    'Duration'    : dur,
                    'Json'        : json_file
                }
            except Exception as e:
                print e
                session_data = {
                    'Nodes'     : nodes,
                    'Framework' : framework,
                    'Json'      : json_file
                }
                pass

            profile_df = profile_df.append(session_data, ignore_index=True)


    profile_df = profile_df.reset_index().drop('index', axis=1)
    profile_df.to_csv('watershed_rp_weak_20to29.csv')
