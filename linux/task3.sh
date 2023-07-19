<<<<<<< HEAD
#!bin/bash
read -p "Enter the file name:" file
read -p "Enter the path :" path

find $path -type f -name $file | grep "$file"
if [$? == 0]
then
	echo "file found"
	cat $file
	echo "Count the lines:" more $file | wc
elif find / -type f -name $file | grep "$file"
then
	echo "file found"
	cat $file
	echo "count the lines:" more $file | wc
else
	echo "File not found"
fi
