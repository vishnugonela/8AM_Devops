#!/bin/bash
read -p "Enter user name:" name
if echo $name | grep [a-z,A-Z] | grep -v [" "]
then
        echo $name
else
        echo "enter correct user name"
fi
