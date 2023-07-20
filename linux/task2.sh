#!/bin/bash

echo "enter the file name"
read filename
if [ -f "$filename" ]
then
	echo "number of words in the file: $(wc -w <"$filename")"
	echo "number of lines in the file: $(wc -l <"$filename")"
	echo "number of characters in the file:$(wc -c <"$filename")"
else
	echo "Invalid filename"
fi
