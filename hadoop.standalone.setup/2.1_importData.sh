#!/bin/bash
# Import data into default dfs
# Author: jobusam
# Work: Masterthesis

EXEC_DIR="/home/johannes/Studium/Masterthesis/work/localinstance/hadoop-3.1.0/"

DATA_DIR="/home/johannes/Studium/Masterthesis/work/localinstance/apps/data"

cd $EXEC_DIR 


if [ ! -z "$1" ] ; then
	echo "Use Input Directory = $1"
	DATA_DIR="$1"	
fi

#delete output directory before
read -p "Import data directory $DATA_DIR into HDFS (under /data)? [Y/n]:" delconf
if [ $delconf == 'Y' ] ; then
	echo "Importing data..."
	./bin/hdfs dfs -put $DATA_DIR /data
fi
