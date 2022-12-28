#!/bin/bash
#Write a shell script to print server details.
echo "SYSTEM NAME:"
uname
echo "MEMORY DETAILS"
free -m
echo "CPU UTILIZATION:"
lscpu
echo "DISC INFORMATION:"
df -h
