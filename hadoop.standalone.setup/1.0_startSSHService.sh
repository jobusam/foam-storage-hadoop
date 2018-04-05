#!/bin/bash
# Start SSH daemon. Because Apache Hadoop use SSH to cummunicate between the instances
# Author: jobusam
# Work: Masterthesis

echo "Start SSH service"
echo "Passwordless ssh connect to localhost is assumed for running Apache Hadoop!"
sudo systemctl start sshd.service
