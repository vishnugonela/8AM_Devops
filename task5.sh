#4. Write a shell script to find all files ends with ".java" in a directory(s)
 #  a. run a loop with count of files found
  # b. if files found filter only last 10 days
   #c. Delete files last 10days 
#!/bin/bash

read -p "enter the directory name to search :" search_dir

#if [[ -Z "$search_dir" ]];
#then 
 #search_dir = "."
#fi
#if [[ ! -d "$search_dir"]];
#the#	echo "directory doesnot exist"
#exit 1
#fi

echo "searching for all files with .java extension in $search_dir "
find "$search_dir" -type f -name "*.java" 
#j_files = $(find "$search_dir" -type f -name "*.java")
echo "count of files"
j_files=$(find "$search_dir" -type f -name "*.java" )
count=$(echo "$j_files" | wc -l )
#count = $(#j_files[@])
echo "Total .java files found:" $count

echo "Listing all .java files:"

i=1
echo "$j_files" | while read -r file; do
echo "$i.$file"
((i++))

done

echo "files modified in last 10 days"
RECENT_FILES=$(find "$search_dir" -type f -name "*.java" -mtime -10)

# Count and show
RECENT_COUNT=$(echo "$RECENT_FILES" | wc -l)
echo "Java files modified in last 10 days: $RECENT_COUNT"

# Delete those files
#if [ "$RECENT_COUNT" -gt 0 ]; then
 # echo "Deleting files modified in the last 10 days..."
  #echo "$RECENT_FILES" | while read -r file; do
   # echo "Deleting: $file"
    #rm "$file"
  #done
#else
 # echo "No files modified in the last 10 days to delete."
#fi

#else
#Echo"directory doesnot exist"
#exit 1
#fi

