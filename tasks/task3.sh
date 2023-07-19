#!/bin/bash

#script for finding files

echo " enter file name :" 
read name
echo " enter path of directory in which you neet to search :  "
read path

if
	[ -d $path  ]
then
	echo " $( find $path -type f  -name $name ) "
	cat $name	
else
	echo " $( find / $name )"
	cat $name
fi
	
