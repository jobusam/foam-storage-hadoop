#!/bin/bash
# Import required hbase jars into HDFS. This jars are build locally and come hbase.
# Consider the correct hbase version!
# Author: jobusam
# Work: Masterthesis

EXEC_DIR="/home/johannes/Studium/Masterthesis/work/localinstance/hadoop-3.1.0/"

HBASE_JARS_DIR="/home/johannes/Studium/Masterthesis/work/localinstance/hbase-3.0.0-SNAPSHOT/lib/"

HDFS_DIR="/hbase-jars/"

cd $EXEC_DIR/bin 

#Create a directory under /hbase-jars
./hdfs dfs -mkdir $HDFS_DIR

#Upload required hbase jars for processing forensic spark app!

./hdfs dfs -put HBASE_JARS_DIR/hbase-spark-3.0.0-SNAPSHOT.jar $HDFS_DIR
./hdfs dfs -put HBASE_JARS_DIR/hbase-common-3.0.0-SNAPSHOT.jar $HDFS_DIR
./hdfs dfs -put HBASE_JARS_DIR/hbase-server-3.0.0-SNAPSHOT.jar $HDFS_DIR
./hdfs dfs -put HBASE_JARS_DIR/hbase-mapreduce-3.0.0-SNAPSHOT.jar $HDFS_DIR
./hdfs dfs -put HBASE_JARS_DIR/hbase-client-3.0.0-SNAPSHOT.jar $HDFS_DIR
./hdfs dfs -put HBASE_JARS_DIR/hbase-protocol-shaded-3.0.0-SNAPSHOT.jar $HDFS_DIR
./hdfs dfs -put HBASE_JARS_DIR/hbase-shaded-protobuf-2.1.0.jar $HDFS_DIR
./hdfs dfs -put HBASE_JARS_DIR/hbase-shaded-miscellaneous-2.1.0.jar $HDFS_DIR
./hdfs dfs -put HBASE_JARS_DIR/hbase-shaded-netty-2.1.0.jar $HDFS_DIR

