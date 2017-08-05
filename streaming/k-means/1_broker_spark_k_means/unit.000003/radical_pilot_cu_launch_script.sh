#!/bin/sh


# Change to working directory for unit
cd /work/03662/tg829618/wrangler/radical.pilot.sandbox/rp.session.js-17-20.jetstream-cloud.org.georgeha.017383.0022/pilot.0000/unit.000003
# Environment variables
export RP_SESSION_ID=rp.session.js-17-20.jetstream-cloud.org.georgeha.017383.0022
export RP_PILOT_ID=pilot.0000
export RP_AGENT_ID=agent_1
export RP_SPAWNER_ID=agent.executing.0.child
export RP_UNIT_ID=unit.000003

# The command to run
/work/03662/tg829618/wrangler/radical.pilot.sandbox/rp.session.js-17-20.jetstream-cloud.org.georgeha.017383.0022/pilot.0000/spark-2.0.2/bin/spark-submit --packages org.apache.spark:spark-streaming-kafka-0-8_2.11:2.0.0  StreamingKMeans.py c251-108:9092 KmeansList 5 --verbose   --conf spark.eventLog.enabled=true  --conf spark.eventLog.dir=./  
RETVAL=$?
# Exit the script with the return code from the command
exit $RETVAL
