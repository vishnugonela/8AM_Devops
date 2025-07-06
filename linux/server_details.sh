#!/bin/bash

#task4
#write a shell script to print server details
echo"List  the processes"
ps -eo pid,ppid,%cpu,cmd,%mem --sort %cpu


echo -e  "enter server details:" $(hostname)

echo "memory:"
free -h | awk 'NR==2
{print "total memory :"$2 "\n  used :" $3 "\n free :"$4}'

echo "CPU"
lscpu | grep -E '^Model name|^CPU\(s\)|^Thread|^Core|^Socket|^Architecture'

echo"disk"
df -h


