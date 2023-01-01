#! /bin/bash


# Shell Scripting for to Find a FILE
# ----------------------------------

	echo -e "\n Enter your File_Name: "
	read file
	
	echo -e "\n Enter the file path to check: "
	read path
	
	if find $path -name $file -print -quit | grep -q '^';
       		then
			echo -e "\n The file $file exists! in the folder: $path"
			echo -e "\n ***--- File:- $file Content is shown below---*** \n"
			cat $file
		else
			echo -e "\n The file $file does not exist! in the folder: $path"
	fi
