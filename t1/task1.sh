#! /bin/bash

echo "hello world"


echo "file name:"

read filename

echo "your file name is :$filename"

echo "enter your file path:"

read path2check

if find $path2check -name $filename -print -quit | grep -q '^'; then

	echo "the file exists"

else
	echo "the file not exists"


fi
