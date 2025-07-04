#!/bin/bash
# Date: 23/06/2025
#
# Author: Santosh Sethy
#
#Write a shell script to print server details.
#Name:
#Memory:
#CPU:
#Disk
#
#version:1
#set -x # debug mode

echo "----Print the Server Details----"
echo "Hostname       : $(hostname)"


echo "---Print the Memory Details----"
    free -h

echo "---Print the CPU detailsi---"
echo "CPU(s)         : $(nproc)"


echo "----Print the Diskdetails---"
df -hT | grep -v tmpfs

echo "-------- Disk Info (lsblk) --------"
lsblk -o NAME,SIZE,TYPE,MOUNTPOINT,FSTYPE

echo "==================================="
