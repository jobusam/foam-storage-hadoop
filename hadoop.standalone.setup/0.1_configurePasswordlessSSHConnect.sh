#!/bin/bash
# Passwordless connect to local standalone instance is required by Apache Hadoop...
# Author: jobusam
# Work: Masterthesis

echo "Passwordless ssh connect to localhost must be configured for running Apache Hadoop (HDFS and YARN)!"
ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys
