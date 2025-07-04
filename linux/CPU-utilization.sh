#!/bin/bash
# Date: 23/06/2025
#
#Write a shell script to print running process based of CPU utilization
#
#version:1
#
#set -x # debug mode
 echo "Running Processes Sorted by CPU Usage"
echo "======================================"
ps -eo pid,user,%cpu,%mem,cmd

