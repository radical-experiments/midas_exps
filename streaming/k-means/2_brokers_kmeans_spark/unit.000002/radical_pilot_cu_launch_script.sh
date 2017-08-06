#!/bin/sh


# Change to working directory for unit
cd /work/03662/tg829618/wrangler/radical.pilot.sandbox/rp.session.js-17-20.jetstream-cloud.org.georgeha.017383.0027/pilot.0000/unit.000002
# Environment variables
export RP_SESSION_ID=rp.session.js-17-20.jetstream-cloud.org.georgeha.017383.0027
export RP_PILOT_ID=pilot.0000
export RP_AGENT_ID=agent_1
export RP_SPAWNER_ID=agent.executing.0.child
export RP_UNIT_ID=unit.000002

# The command to run
/work/03662/tg829618/wrangler/radical.pilot.sandbox/ve_wrangler/bin/python StreamingProducer.py c251-111:9092,c251-112:9092 KmeansList 48 
RETVAL=$?
# Exit the script with the return code from the command
exit $RETVAL
