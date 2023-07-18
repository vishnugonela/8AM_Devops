#!/bin/bash

# Write a shell script to install a package called 'tomcat'
#    a. Before installing check whether package installed or not

echo " Enter the Package to Install : $package "

read -r package

if [ dnf list installed grep $package ]
then 
	echo " The $package is already Installed "
else 

	echo " Do you want to Install $package "

	echo " $yes "

	read -r yes
		
	if [ $yes != -n ]
		
		then 

	        sudo yum install $package

		fi 

fi	
