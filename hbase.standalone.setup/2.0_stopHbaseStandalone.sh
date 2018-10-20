#!/bin/bash
# Stop HBASE database on local machine
# Author: jobusam
# Work: Masterthesis

# latestes HBASE build
# EXEC_DIR="/home/johannes/Studium/Masterthesis/work/localinstance/hbase-3.0.0-SNAPSHOT/"

# official HBASE build
EXEC_DIR="/home/johannes/Studium/Masterthesis/work/localinstance/hbase-1.1.2/"


echo "Stop local HBASE instance"

cd $EXEC_DIR
./bin/stop-hbase.sh

#echo "Delete HBASE content and logs"
#rm -r $EXEC_DIR/logs
#rm -r /home/johannes/Studium/Masterthesis/work/localinstance/hbase-tmp
