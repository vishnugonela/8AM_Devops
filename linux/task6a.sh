#!/bin/bash

echo "$(hostname -I | grep [0-9])"
if [ $? == 0 ]
then
	echo "ipv4 address printed"
fi
