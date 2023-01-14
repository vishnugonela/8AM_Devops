#!/bin/bash
read -p "file name:" name
if [ -e "$name" ]
then
        echo "yes,Directory is exist"
else
        echo "no,Directory is not exist"
fi
