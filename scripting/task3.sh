#!/bin/bash
#counting lines words characters from the file
read -p "file name:" fp
count=`wc < $fp`
echo $count
