#!/bin/bash

#Write a shell script to accept input from user as their username only. 
#   a. username must be 'string'
#   b. username must be 'UPPERCASE'
#   c. username should not contain spaces

echo " Enter the UserName :$username "

read -r username

#if [[ $username =~ ^[[:alpha:]]+$ ]] && [[ $username =~ ^[[:upper:]]+$ ]]	
#then 


#echo "UserName is $username"
#else 
#	echo "your UserName contains Numbers"
#fi	

if echo "$username" | grep -q '[[:space:]]'
then 
	echo "your username is $username"
else
	echo "INVALID USERNAME"
fi
