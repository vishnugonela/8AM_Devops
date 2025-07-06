#!/bin/bash

echo "file(s) must be ends with .txt" 
find /home/user1 -type f -name "*.txt"
echo "file size must be greater than 10mb"
find /home/user1/ -type f  -size +10M
echo "file must be older than 10 days"
find /home/user1  -type f -mtime +10

echo " all files under /var directory which ends with .log"
find /var -type f -name "*.log"
