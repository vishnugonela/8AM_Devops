#! /bin/bash


# Shell Scripting for to read File_Content
# ----------------------------------------


	echo "Enter File_Name:"
	read file

	echo "The File Content of $file is:" `wc $file`
	
