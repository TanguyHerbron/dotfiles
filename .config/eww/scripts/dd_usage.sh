#!/bin/bash
# 

mount_points=$(lsblk -l | grep part | grep -ve efi -ve SWAP | awk '{printf $7 "\n"}')

for mp in $mount_points; do
    usage=$(df -h $mp | awk '{if(NR>1)print $4 " /" $2 }')
    printf " %-10s\t %2s %s %s\n" $mp $usage
done
