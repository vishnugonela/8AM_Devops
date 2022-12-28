#!/bin/bash
#'3. Write a shell script to find a file in specific directory. 
 #   a. Script should accept user input for path & filename
  #   b.  if path not found or empty then script can take default path as /'

 echo "Enter the Path or file name:"
read a
FILE="$a"

if [ -e $FILE ]

then 

echo "*** File - $FILE contents ***"
cat $FILE

else
echo "The path doesnt exist"
echo "The current directory is `cd/`"
     fi
