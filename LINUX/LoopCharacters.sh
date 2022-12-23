#! /bin/bash

# Shell Scripting for Looping the Characters of a String
# ------------------------------------------------------

	read -p "Enter a String:" String
	
	for (( i=0; i<${#String}; i++ ));
	   do
		echo "${String:$i:1}"
	   done
	
	echo -e "\n Total number of Characters in a String: ${#String}"

