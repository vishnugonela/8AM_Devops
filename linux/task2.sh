#!/bin/bash
read -p "Enter the file name:" file
if find / -type f -name $file | grep "$file"
then
	echo "file found"
	more $file
	echo "count the lines:" more $file | wc
else
	echo "file not found"
fi
