#!/bin/bash
name=$(hostname)
memory=$(free|grep Mem )
cpu=$(top|grep Cpu)
disk=$(df -hP)
echo "Server details"
echo "Name:$name"
echo "Memory:$memory"
echo "cpu:$cpu"
echo "Disk:$disk"
