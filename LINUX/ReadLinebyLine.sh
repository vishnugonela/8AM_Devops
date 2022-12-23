#! /bin/bash

# Shell Scripting for Reading A File Line by Line
# -----------------------------------------------

	read -p "Enter a String:" String
	
	read -p " Enter a Filename:" Filename
	
	n=1
	while read line;
	   do
		echo "$String) Line No. $n : $line"
		n=$((n+1))
	   done < $Filename
