#!/bin/bash

#Shell script to print print server details

echo "Name and Host :" $(uname) $(hostname)


echo "Memmory details :" 
cat /proc/meminfo

echo "CPU Utilization :"
mpstat

echo "Disk Space :" 
df -h


