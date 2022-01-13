#!/usr/bin/env bash
set -m # job control
set -e # fail on errors

# process that always runs, 2 flavors
# tail -f /dev/null 1>/dev/null
while :; do
	echo "."
	sleep 1
done

# uncomment this to simulate a process that runs awhile and exits with success
# sleep 5

# uncomment this to simulate a process that runs awhile and exits with error
# sleep 5
# exit 1
