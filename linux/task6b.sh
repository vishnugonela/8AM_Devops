#!/bin/bash

echo "$(ip addr | grep -e [0-9] | grep -e [a-z])"
if [ $? == 0 ]
then 
	echo "ipv6 address printed"
	exit 1
fi
