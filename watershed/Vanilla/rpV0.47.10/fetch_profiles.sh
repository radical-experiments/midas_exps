#!/bin/sh

#
# This script retrieves RP profiles
# from a certain time range given
# the pattern to search for
#

maxdepth="1"                   # limit find to this directory
pattern="rp_watershed*"        # pattern to look for
type="d"                       # search for (d)irectory
start_time="05/14/2018 14:00"  # look for directories created between this time
end_time="05/14/2018 14:16"    # and this time
sessions=$(find . -maxdepth $maxdepth -name "$pattern" -type "$type" -newermt "$start_time" ! -newermt "$end_time" -printf "%f\n")

echo "fetching profiles for"
echo $sessions
echo "..."
for session in $sessions;
do
        fetch_prof="radical-pilot-fetch-profiles $session -t $session";
        echo $fetch_prof;
        $fetch_prof

        fetch_db="radical-pilot-fetch-db $session -t $session";
        echo $fetch_db;
        $fetch_db

        mv_profiles="mv $session/$session/$session/pilot* $session";
        mv_json="mv $session/$session/*.json $session";
        echo $mv_profiles;
        echo $mv_json;
	$mv_profiles;
	$mv_json;

        rm_empty_dir="rm -r $session/$session";
        echo $rm_empty_dir;
        $rm_empty_dir

        echo "--------------"
done;

