#!/bin/bash

#Write a shell script to find a file in specific directory. 
#    a. Script should accept user input for path & filename
#    b.  if path not found or empty then script can take default path as /

#echo "Enter the path and file"

echo " Enter the first Path: $path1 "
 
read -r path1 

echo " Enter the second path : $path2"

read -r path2

echo " Enter the filename : $file "

read -r file

if [[ $path1 && $path2 && $file != -n ]]
then
	find /$path1/$path2 | grep $file
	  echo " the $file is found in $path1/$path2 "
else
	echo " the $file is not found in $path1/$path2 "

	if [[ $path1 && $path2 && $file == -n ]]
	 then
		 find / | grep $file
		echo "$file found"
	else
		echo "$fiel not found"
	fi 
fi 
