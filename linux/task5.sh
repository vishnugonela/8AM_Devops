#!/bin/bash
<<<<<<< HEAD
read -p "Enter the Package Name:" Package

if rpm -q $Package >/dev/null
then
	echo "Package is installed"
else
	echo "Package is not installed!"
	echo "Installing the Package"
	yum install $Package
fi

