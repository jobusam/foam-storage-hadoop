#!/bin/bash
# Update System Parameter for better performance
# Author: jobusam
# Work: Masterthesis

#Script must be executed with root privileges
echo "Set System Swappiness to 1% to increase Hadoop Performance (non-persistent change)"
echo "1" > /proc/sys/vm/swappiness
