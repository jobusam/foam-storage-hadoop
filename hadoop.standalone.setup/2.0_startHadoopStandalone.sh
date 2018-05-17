#!/bin/bash
# Start Apache Hadoop Standalone
# Author: jobusam
# Work: Masterthesis

EXEC_DIR="/home/johannes/Studium/Masterthesis/work/localinstance/hadoop-3.1.0/"

NAMENODE_DATA_DIR=/home/johannes/Studium/Masterthesis/work/localinstance/hadoop-tmp/namenode
DATANODE_DATA_DIR=/home/johannes/Studium/Masterthesis/work/localinstance/hadoop-tmp/datanode

cd $EXEC_DIR 

#reset hdfs before
read -p "Reset/Format HDFS? [Y/n]:" delconf
if [ $delconf == 'Y' ] ; then
    
    echo "Remove Apache Hadoop Logs"
	rm -r $EXEC_DIR/logs/*
	echo "Delete temp directories $NAMENODE_DATA_DIR and $DATANODE_DATA_DIR"
	rm -r $NAMENODE_DATA_DIR/*
	rm -r $DATANODE_DATA_DIR/*
	echo "Reset/Format HDFS"
	./bin/hdfs namenode -format
fi

#start hadoop standalone with secondary name node or not?
# in my special local standalone scenario the secondary name node is not worth to start concerning the needed memory consumption...
read -p "Start Hadoop with Secondary Name Node? Than press Y. Otherwise no Secondary Name Node will be started (experimental) [Y/n]:" delconf
if [ $delconf == 'Y' ]
then
	echo "Start HDFS (Name Node, Secondary Name Node, Data Node)"
	./sbin/start-dfs.sh
else
	echo "Start HDFS (Name Node and Data Node only)"
	./sbin/start-dfs-stripped.sh
fi

echo "Start YARN Resource Manager (Resource Manager, Node Manager)"
./sbin/start-yarn.sh


echo "Started Apache Hadoop Standalone instance on local node (Pseudo-Distributed)"

