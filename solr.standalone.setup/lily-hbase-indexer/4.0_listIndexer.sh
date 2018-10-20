#!/bin/bash
# List indexers of LilyHBaseIndexer on local machine
# Author: jobusam
# Work: Masterthesis

EXEC_DIR="/home/johannes/WORK_DIR/hbase-indexer-1.6-SNAPSHOT"
echo "List indexers of Lily HBase Indexer"

cd $EXEC_DIR
./bin/hbase-indexer list-indexers

