#!/bin/bash
# Date: 23/06/2025
#
# Author: Santosh Sethy
#
# Write a shell script to find all files ends with ".java" in a directory(s)
#   a. run a loop with count of files found
#  b. if files found filter only last 10 days
#   c. Delete files last 10days
#
#version:1
#set -x # debug mode
#
# Use current directory if no argument is provided
DIR=${1:-.}

# Check if directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: '$DIR' is not a valid directory."
    exit 1
fi

echo "Searching for .java files in: $DIR"
echo "-----------------------------------------"

# Find and list all .java files
find "$DIR" -type f -name "*.java"

echo "-----------------------------------------"
echo "            Search completed."

# Initialize counter
count=0

# Loop through all .java files
while IFS= read -r -d '' file; do
    echo "$file"
    ((count++))
done < <(find "$DIR" -type f -name "*.java" -print0)

echo "-----------------------------------------"
echo "      Total .java files found: $count"
echo "------------------------------------------"


echo "Searching for .java files modified in the last 10 days in: $DIR"
echo "---------------------------------------------------------------"

# Initialize counter
count=0

# Find and loop through .java files modified in the last 10 days
while IFS= read -r -d '' file; do
    echo "$file"
    ((count++))
done < <(find "$DIR" -type f -name "*.java" -mtime -10 -print0)

echo "---------------------------------------------------------------"
echo "Total .java files modified in last 10 days: $count"

echo "Deleting .java files modified in the last 10 days in: $DIR"
echo "------------------------------------------------------------"

# Initialize counter
count=0

# Find and delete files modified in the last 10 days
while IFS= read -r -d '' file; do
    echo "Deleting: $file"
    rm -f "$file"
    ((count++))
done < <(find "$DIR" -type f -name "*.java" -mtime -10 -print0)

echo "------------------------------------------------------------"
echo "Total .java files deleted: $count"

