#!/bin/bash

log_source=$1
time_to_log=$2
time_to_delete=$3
log_archive_path=~/log-archive
archives_path=~/log-archive/archives

#checks if log-archive directory exists
if [ ! -d $log_archive_path ]; then
  mkdir $log_archive_path
fi

#checks if archives directory exists
if [ ! -d $archives_path ]; then
   mkdir $archives_path
fi

#
if [ -z "$1" ]; then
  echo "Provide a path to a directory from which i should archive your logs"
else
  if [ -z "$2" ]; then
    cp $1/*.log $archives_path
  else
    while true; do
      cp $1/*.log $archives_path
      sleep $2s
    done
  fi
fi

