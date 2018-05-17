#!/bin/bash
# Stop Apache Hadoop standalone instance
# Author: jobusam
# Work: Masterthesis

EXEC_DIR="/home/johannes/Studium/Masterthesis/work/localinstance/hadoop-3.1.0/"

cd $EXEC_DIR 

echo "Stop HDFS"
./sbin/stop-dfs.sh

echo "Stop YARN Resource Manager"
./sbin/stop-yarn.sh

echo "Stopped Apache Hadoop Standalone instance on local node (Pseudo-Distributed)"
