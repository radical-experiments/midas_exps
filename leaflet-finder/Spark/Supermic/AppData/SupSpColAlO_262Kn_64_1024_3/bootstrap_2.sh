#!/bin/bash

# some inspection for logging
hostname

# make sure we use the correct sandbox
cd /work/iparaske/radical.pilot.sandbox/SupSpColAlO_262Kn_64_1024_3-pilot.0000

# apply some env settings as stored after running pre_bootstrap_1 commands
export PATH="/usr/local/packages/python/2.7.13-anaconda/bin:/work/iparaske/miniconda2/bin:/work/iparaske/htop-1.0.2:/work/iparaske/miniconda2/bin:/work/iparaske/htop-1.0.2:/work/iparaske/miniconda2/bin:/work/iparaske/htop-1.0.2:/usr/lib64/qt-3.3/bin:/usr/local/packages/xsede/xdinfo-1.3-1/bin:/usr/local/packages/xsede/xdusage/xdusage-2.0-3:/usr/local/packages/xsede/xdresourceid-1.0-2/bin:/usr/local/packages/xsede/perl/bin:/usr/local/packages/xsede/unicore/ucc-6.6.0/bin:/usr/local/packages/xsede/uberftp-2.6/bin:/usr/lib/jvm/java-1.7.0/bin:/usr/lib/jvm/java-1.7.0/jre/bin:/usr/local/packages/xsede/apache-ant-1.9.4/bin:/usr/local/packages/xsede/tginfo-1.1.4-r1/bin:/usr/local/packages/xsede/globus-client-xsede-6.0/usr/bin:/usr/local/packages/xsede/tgusage-3.0-r3/bin:/usr/local/packages/xsede/gx-map-0.5.3.3-r1/bin:/usr/local/packages/mvapich2/2.0/INTEL-14.0.2/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/packages/xsede/gsi-openssh-5.3/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/compilers/pgi/linux86-64/6.1/bin:/usr/local/compilers/Intel/cluster_studio_xe_2013.1.046/composer_xe_2013_sp1.2.144/bin/intel64:/opt/ibutils/bin:/opt/dell/srvadmin/bin:/home/iparaske/bin:/usr/local/compilers/pgi/linux86-64/6.1/bin:/home/iparaske/bin:/usr/local/compilers/pgi/linux86-64/6.1/bin:/home/iparaske/bin"
export LD_LIBRARY_PATH="/usr/local/packages/xsede/perl/lib:/usr/local/packages/xsede/globus-5.0.4-r1/lib:/usr/local/packages/xsede/globus-client-xsede-6.0/usr/lib64:/usr/local/packages/mvapich2/2.0/INTEL-14.0.2/lib:/usr/local/packages/xsede/gsi-openssh-5.3/lib:/usr/local/packages/xsede/gsi-openssh-5.3/lib:/usr/local/compilers/Intel/cluster_studio_xe_2013.1.046/composer_xe_2013_sp1.2.144/compiler/lib/intel64:/usr/local/compilers/Intel/cluster_studio_xe_2013.1.046/composer_xe_2013_sp1.2.144/mkl/lib/intel64"

# activate virtenv
if test "anaconda" = "anaconda"
then
    source activate /worka/work/iparaske/radical.pilot.sandbox/ve_supermic/
else
    . /worka/work/iparaske/radical.pilot.sandbox/ve_supermic/bin/activate
fi

# make sure rp_install is used
export PYTHONPATH=/work/iparaske/radical.pilot.sandbox/SupSpColAlO_262Kn_64_1024_3-pilot.0000/rp_install/lib/python2.7/site-packages::/usr/local/packages/python/2.7.13-anaconda/lib/python2.7/site-packages

# run agent in debug mode
# FIXME: make option again?
export SAGA_VERBOSE=DEBUG
export RADICAL_VERBOSE=DEBUG
export RADICAL_UTIL_VERBOSE=DEBUG
export RADICAL_PILOT_VERBOSE=DEBUG

# avoid ntphost lookups on compute nodes
export RADICAL_PILOT_NTPHOST=108.59.2.24

# pass environment variables down so that module load becomes effective at
# the other side too (e.g. sub-agents).


# start agent, forward arguments
# NOTE: exec only makes sense in the last line of the script
exec /worka/work/iparaske/radical.pilot.sandbox/ve_supermic/bin/python /work/iparaske/radical.pilot.sandbox/SupSpColAlO_262Kn_64_1024_3-pilot.0000/rp_install/bin/radical-pilot-agent-multicore.py "$1" 1>"$1.out" 2>"$1.err"

