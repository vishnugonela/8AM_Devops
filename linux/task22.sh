#!/bin/bash


echo "enter a filename"
read file


a= wc -l $file
b= wc -w $file
c= wc -c $file

echo "lines, words, characters of file are" $a $b $c


