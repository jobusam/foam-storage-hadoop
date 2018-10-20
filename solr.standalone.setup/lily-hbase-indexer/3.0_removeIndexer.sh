#!/bin/bash
# Delete forensicIndexer on LilyHBaseIndexer on local machine
# Author: jobusam
# Work: Masterthesis

EXEC_DIR="/home/johannes/WORK_DIR/hbase-indexer-1.6-SNAPSHOT"
echo "Delete forensicIndexer from Lily HBase Indexer"

cd $EXEC_DIR
./bin/hbase-indexer delete-indexer -n forensicIndexer

