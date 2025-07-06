#Write a shell script to print file content details like No of Words, lines, characters.  You must accept input from the user. 


#!/bin/bash


echo"file content details:no of words, no. of lines, no.of characters in the file "
read -p  "Enter filename:" filename
if[[ -f "$filename" ]];  
echo "no. of lines:$(wc -l<"$filename")"
echo "no. of words:$(wc -w<"$filename")"
echo "no.of characters:$(wc -m<"$filename")"
exit 1

else
echo":error:file doesnot exist"

fi


