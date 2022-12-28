#!/bin/bash
#2. Write a shell script to print file content details. 
#Like No of Words, lines, characters.  You must accept input from the user. 
# Check the command-line argument value is given or not
if [ $# -gt 0 ]; then
    # Assign the filename from comand-line argument value
    filename=$1
   
    # Read file line by line
    while read line; do
        # Print each line
        echo $line
    done < $filename
else
    # Print message if no argument is provided
    echo "Argument value is missing."
fi