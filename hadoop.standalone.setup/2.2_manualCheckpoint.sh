#!/bin/bash
# Create a checkpoint of the namenode manually. Normally this is not necessary because the secondary name node does this job...
# I use it only for experimental stuff and because on my local hadoop standalone instance i don't run a secondary name node to save resources...
# Author: jobusam
# Work: Masterthesis

EXEC_DIR="/home/johannes/Studium/Masterthesis/work/localinstance/hadoop-3.1.0/"

cd $EXEC_DIR 
echo "Create a checkpoint for the hdfs namenode manually."
./bin/hdfs dfsadmin -safemode enter
./bin/hdfs dfsadmin -saveNamespace
./bin/hdfs dfsadmin -safemode leave

