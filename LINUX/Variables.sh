#! /bin/bash


# Shell Scripting for Variables
# -----------------------------


Course="Devops"
Institution="MNP_Technologies"

#where Course and Institution are Static Variables

	echo "Please Enter Username:"
	read user
	
#where user is a Dynamic Variable
	
	echo -e "\n Hello! $user, Welcome to $Course class in $Institution at $Location"
	
#where Location is a Environmental Variable
