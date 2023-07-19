#!/bin/bash

string="GOUTHAM"

for((i=0; i<${#string}; i++)) 
do 
	char="${string:i:1}"
    echo "Character: $char"
done

#string="Hello, World!"

# Loop over characters in the string
#for ((i=0; i<${#string}; i++))
#do
  #  char="${string:i:1}"
 #   echo "Character: $char"
#done
