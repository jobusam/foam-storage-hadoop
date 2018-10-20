#!/bin/bash
# Mount image and rebase it with file permissions of the current user
# Author: jobusam
# Work: Masterthesis

TEST_IMAGE="ubuntuTestImage20180329.v.1.0.dd"
PARTITION_START_OFFSET="1048576"
MOUNT_POINT="ubuntu/"
MOUNT_POINT_BINDFS="ubuntu2/"

sudo mount -o ro,noload,nodev,noexec,nosuid,noacl,loop,offset=$PARTITION_START_OFFSET $TEST_IMAGE $MOUNT_POINT
sudo bindfs -u $(id -u) -g $(id -g) $MOUNT_POINT $MOUNT_POINT_BINDFS
