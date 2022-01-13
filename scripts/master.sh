#!/usr/bin/env bash
set -m # job control

/usr/local/scripts/shortRunning.sh &
pid1=$!

/usr/local/scripts/longRunning.sh &
pid2=$!

echo $pid1 $pid2
# If either of the processes crash with a non-zero error code, wait returns  '0' and the 'if' condition fails.
if wait $pid1 && wait $pid2; then
	echo -e "All processes terminatated successfully"
	exit 0
else
	echo "one of the wait'ed processes exited non-zero"
	echo "crashing the container"
	exit 1
	# trap doesn't seem to do anything
	# trap 'error1' ERR # Either of P1 or P2 has terminated improperly
fi
