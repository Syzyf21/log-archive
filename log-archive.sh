#!/bin/bash

log_source=$1
time_to_log=$2
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
if [ -z "$log_source" ]; then
  echo "Provide a path to a directory from which i should archive your logs"
elif [ -z "$time_to_log" ]; then
    date=`date +%Y-%m-%d_%H':'%M':'%S`
    cd $log_source
    tar -czf "$archives_path/logs-$date.tar.gz" *.log
else
  while true; do
    date=`date +%Y-%m-%d_%H':'%M':'%S`
    cd $log_source
    tar -czf "$archives_path/logs-$date.tar.gz" *.log
    sleep $time_to_log
  done
fi

