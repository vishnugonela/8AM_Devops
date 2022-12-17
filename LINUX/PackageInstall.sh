#! /bin/bash


# Shell Scripting for installing a Package
# -----------------------------------------


    echo -e "\n Enter Package_Name to be Install: "
    read package
	
    if yum list installed $package
	then
	
		echo -e "\n The Package is already Installed \n"
	
	else
		yum install $package -y
	
    fi
