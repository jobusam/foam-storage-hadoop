#!/bin/bash
# Source Common Environment Parameters
# Author: jobusam
# Work: Masterthesis

HADOOP_BASE="/home/johannes/Studium/Masterthesis/work/localinstance/hadoop-3.0.0/"
HADOOP_BIN=$HADOOP_BASE/bin
HADOOP_SBIN=$HADOOP_BASE/sbin

# set the root of your Java installation
export JAVA_HOME=/usr/java/latest
echo "Set JAVA_HOME to $JAVA_HOME"

# set Hadoop binaries into PATH variable

echo "Add binary directories of Hadoop Installation into PATH variable"
PATH=$PATH:$HADOOP_BIN:$HADOOP_SBIN

