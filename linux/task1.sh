#!/bin/bash

hostname=$(hostname)
cpu=$(lscpu)
memory=$(free)
disk=$(du)


echo "hostname is $hostname"


echo "host cpu is $cpu"


echo "host memory is $memory"


echo "host disk utilization is $disk"

