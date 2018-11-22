#!/bin/bash
for device in `cat /proc/devices`; do ls -lh $device 2> /dev/null; done
