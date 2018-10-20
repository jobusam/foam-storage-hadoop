#!/bin/bash
# Start Solr database on local machine
# Author: jobusam
# Work: Masterthesis

EXEC_DIR="/home/johannes/Studium/Masterthesis/work/localinstance/solr-7.4.0"
ZOOKEEPER="localhost:2181"
echo "Start local Solr instance in Cloud Mode (Connect to ZooKeeper <$ZOOKEEPER>)"
echo "Please ensure that a ZooKeeper instances is running on <$ZOOKEEPER>"
echo "The easiest way for ZooKeeper is to start HBase with the build in ZooKeeper instance"

cd $EXEC_DIR
./bin/solr start -c -z $ZOOKEEPER

read -p "Create forensic metadata index? [Y/n]:" delconf
if [ $delconf == 'Y' ] ; then    
    echo "Create forensic metadata index (with two shards)"
    #for Solr 7.4
    ./bin/solr create -c forensicMetadata -n myCollConfigs -s 2 -rf 2
    #for Solr 5.5.1
    #./bin/solr create -c forensicMetadata -d data_driven_schema_configs -n myCollConfigs -s 2 -rf 2
fi

