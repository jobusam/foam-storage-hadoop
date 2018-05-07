#!/bin/bash
# Start HBASE database on local machine
# Author: jobusam
# Work: Masterthesis

EXEC_DIR="/home/johannes/Studium/Masterthesis/work/localinstance/hbase-1.4.3/"

echo "Start local HBASE instance"

cd $EXEC_DIR
./bin/start-hbase.sh
