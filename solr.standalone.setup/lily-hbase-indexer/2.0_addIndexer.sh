#!/bin/bash
# Add forensicIndexer to LilyHBaseIndexer on local machine
# Author: jobusam
# Work: Masterthesis

EXEC_DIR="/home/johannes/WORK_DIR/hbase-indexer-1.6-SNAPSHOT"
ZOOKEEPER="localhost:2181"
FORENSIC_INDEXER_CONFIG="conf/forensicIndexer.xml"
SOLR_COLLECTION="forensicMetadata"
echo "Add a forensicIndexer to Lily HBASE indexer server instance (Connect to ZooKeeper <$ZOOKEEPER>)"
echo "Please ensure that HBASE (< 2.0.0), Solr and ZooKeeper is running"

cd $EXEC_DIR
./bin/hbase-indexer add-indexer -n forensicIndexer -c $FORENSIC_INDEXER_CONFIG -cp solr.zk=$ZOOKEEPER -cp solr.collection=$SOLR_COLLECTION

