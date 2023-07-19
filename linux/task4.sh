#!/bin/bash
# Write a shell script to find all files ends with ".java" in a directory(s)
#   a. run a loop with count of files found
#   b. if files found filter only last 10 days
#   c. Delete files last 10days 

echo " Enter the first Path: $path1"

read -r path1

echo " Enter the first Path: $path2"

read -r path2

find /$path1/$path2 | grep .java

if [ /$path/$apth2 | grep .java != -n ]
then 
	find /$path1/$path2 -f -mtime -10 && rm -f -mtime -10 
fi
