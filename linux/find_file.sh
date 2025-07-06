#3. Write a shell script to find a file in specific directory. 
#  a. Script should accept user input for path & filename
 #b.  if path not found or empty then script can take default path as /





#!/bin/bash

# Prompt for path and filename
read -p "Enter the directory path to search in: " path
read -p "Enter the filename to search: " filename

# Validate path: If empty or does not exist, use default "/"
if [ -z "$path" ] || [ ! -d "$path" ]; then
    echo "Invalid or empty path. Using default path: /"
    path="/"
fi

# Search for the file
echo "Searching for '$filename' in '$path'..."
find "$path" -type f -name "$filename" 

