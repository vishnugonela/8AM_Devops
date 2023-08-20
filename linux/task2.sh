#!/bin/bash

#The script to print the content of the files like noof words,line and characters taking the input from user..

###################################################################

echo "Enyer the File name to fetch the Details : $file "

read file
#echo "$( find / file )"
if [[ $file == *.txt ]] 
then 
	echo "the no of words in the file is :$( wc -w $file )"
	
	echo "the no of lines in the file is :$( wc -l $file )"
	
	echo "the no of charactes in the file is :$( wc -c $file)"

elif [[ $file != *.txt ]]
then 
	echo " INVALID FILE "
fi
