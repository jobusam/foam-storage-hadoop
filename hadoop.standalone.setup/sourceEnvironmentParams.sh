#!/bin/bash
# Source Common Environment Parameters
# Author: jobusam
# Work: Masterthesis

HADOOP_BASE="/home/johannes/Studium/Masterthesis/work/localinstance/hadoop-3.1.0/"
HADOOP_BIN=$HADOOP_BASE/bin
HADOOP_SBIN=$HADOOP_BASE/sbin

# set Hadoop binaries into PATH variable

echo "Add binary directories of Hadoop Installation into PATH variable"
PATH=$PATH:$HADOOP_BIN:$HADOOP_SBIN

