#!/bin/bash
function update_code {
	oldrev=$1
	newrev=$2
	refname=$3
	if [ "$refname" != "refs/heads/develop" ]; then
		echo "not refs/heads/develop : $refname"
		return
	fi
	cd /opt/moode/sync/hipandora/
	env -i git checkout -f develop
	env -i git pull origin develop || {
		echo "update code fail."
		return 1
	}
	env -i git push beta develop || {
		echo "!!!!!!! push beta develop fail."
	}
}

# --- Main loop
# Allow dual mode: run from the command line just like the update hook, or
# if no arguments are given then run as a hook script
if [ -n "$1" -a -n "$2" -a -n "$3" ]; then
	update_code $1 $2 $3
else
	while read oldrev newrev refname
	do
		update_code $oldrev $newrev $refname
	done
fi
