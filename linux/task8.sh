#!/bin/bash
#Accept username & password
#    a. password must be "alphanumeric"
#    b. password must be "upper+lower case"

echo "Enter the Username : $username " 
read -r username 

echo "Enter the Password : $password "
read -r password

if [[$password =~ ^[[:alpha:]]+$ ]] && [[ $password =~ ^[[:digit:]]+$ ]] && [[ $password =~ ^[[:upper:]]+$ ]] && [[ $password =~ ^[[:lower:]]+$ ]]
then 
	echo "Your Password is $password"
else 
	echo "Your password should have Alphanumeric and uppercase and lowercase "
fi

