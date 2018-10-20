#!/bin/bash
# Start LilyHBaseIndexer on local machine
# Author: jobusam
# Work: Masterthesis

EXEC_DIR="/home/johannes/WORK_DIR/hbase-indexer-1.6-SNAPSHOT"
echo "Start a Lily HBASE indexer instance using solr and hbase"
echo "Please ensure that HBASE (< 2.0.0), Solr and ZooKeeper is running"

cd $EXEC_DIR
./bin/hbase-indexer server
