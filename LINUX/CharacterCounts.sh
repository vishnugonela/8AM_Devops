#! /bin/bash

# Shell Scripting for a Counting the Characters of a Sting
# --------------------------------------------------------


string=$1
read -p "Enter a String:" string

for char in {a..z}
do
  count=`awk -F"${char}" '{print NF-1}' <<< "${string}"`
  if [ $count  != 0 ]; then
    echo -n $char:
    echo $count
  fi
done
