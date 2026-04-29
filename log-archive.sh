#!/bin/bash

log_source=$1
time_to_log=$2
time_to_delete=$3

mkdir ~/log-archive

if [ -z "$1" ]; then
	echo "Provide a path to a directory from which i should archive your logs"
else
	if [ -z "$2" ]; then
		cp $1/*.log ~/log-archive/archives/
	else
		while true; do
			cp $1/*.log ~/log-archive/archives/
			sleep $2s
		done
	fi
fi

