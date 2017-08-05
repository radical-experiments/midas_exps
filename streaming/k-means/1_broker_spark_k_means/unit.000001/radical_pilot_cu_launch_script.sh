#!/bin/sh


# Change to working directory for unit
cd /work/03662/tg829618/wrangler/radical.pilot.sandbox/rp.session.js-17-20.jetstream-cloud.org.georgeha.017383.0022/pilot.0000/unit.000001
# Environment variables
export RP_SESSION_ID=rp.session.js-17-20.jetstream-cloud.org.georgeha.017383.0022
export RP_PILOT_ID=pilot.0000
export RP_AGENT_ID=agent_1
export RP_SPAWNER_ID=agent.executing.0.child
export RP_UNIT_ID=unit.000001

# The command to run
/work/03662/tg829618/wrangler/radical.pilot.sandbox/rp.session.js-17-20.jetstream-cloud.org.georgeha.017383.0022/pilot.0000/kafka_2.11-0.10.1.0/bin/kafka-topics.sh  --create --zookeeper c251-108.wrangler.tacc.utexas.edu:2181  --replication-factor 1 --partitions 5                                 --topic KmeansList 
RETVAL=$?
# Exit the script with the return code from the command
exit $RETVAL
