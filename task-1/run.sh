#!/bin/bash

make
insmod lkm.ko
mknod /dev/lkm_device c $(dmesg | tail -n 1 | awk '{print $5}') 0
