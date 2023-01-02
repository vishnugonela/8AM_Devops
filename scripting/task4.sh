#4. Write a shell script to find all files ends with ".java" in a directory(s)
#  a. run a loop with count of files found
ls –la | grep .java
 
# b. if files found filter only last 10 days
#ANS:find directoryname -iname (file name or * to find all files ) -mtime (time in days) 
find /home -mtime -10 -ls # find all files
find /home -iname "*.txt" -mtime -10 -ls # finds files with .txt extension
#  c. Delete files last 10days"
find /home/mounica/directory -mtime -10 -ls | grep ".txt *" | rm -rf .txt *
                                 #or
ls -ltr | tail -10 | grep ".java" | rm -rf .java * 