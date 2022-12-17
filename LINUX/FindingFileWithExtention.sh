#! /bin/bash

# Shell Scripting for Finding a File With Extention
# -------------------------------------------------

	echo -e "Enter File_Name: "
	read filename
	
	echo -e "\n Enter File_Path: "
	read path
	
	if find $path -type f -name "*.sh"  
	  then
		echo "The file $filename is exists"
	  else
		echo "The file $filename doesn't exists"
	fi
		 	
	echo "The count of Files Found is : ` ls | wc -l` "


