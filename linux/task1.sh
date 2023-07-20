#!/bin/bash

echo "-------------Server details--------------"
Name=$(hostname)
Memory=$(free -h)
CPU=$(lscpu)
Disk=$(df)

echo "servername:$Name"
echo "Memory:$Memory"
echo "cpu details:$CPU"
echo "Disk space:$Disk"

