#!/bin/bash
# Date: 23/06/2025
#
# Author: Santosh Sethy
# Write a shell script to install a package called 'tomcat'
# a. Before installing check whether package installed or not
#
#version:1
#set -x # debug mode
#
#Note- Script need to run with root user


PACKAGE="tomcat"

#Check if tomcat is already installed

if rpm -q $PACKAGE &> /dev/null; then
    echo "Package '$PACKAGE' is already installed."

fi

#Download and extract Tomcat software package

wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.41/bin/apache-tomcat-10.1.41.tar.gz
tar xvzf apache-tomcat-10.1.41.tar.gz -C /home/ec2-user/devops

mv apache-tomcat-10.1.41/ tomcat

#Now delete the zip software package from the directory

rm -rf apache-tomcat-10.1.41.tar.gz

#Change directory to tomcat
cd tomcat

#install java

sudo yum install java -y

#change directory to bin
cd /home/ec2-user/devops/tomcat/bin

#Start the catalina.sh service to start the tomcat service
/home/ec2-user/devops/tomcat/bin/startup.sh
