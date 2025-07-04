#!/bin/bash
#
# Date: 23/06/2025
#
# Author: Santosh Sethy
#
#  Write a shell script to find a file in specific directory.
#   a. Script should accept user input for path & filename
#     b.  if path not found or empty then script can take default path as /
#
#version:1
#
#set -x # debug mode

# Ask for directory and filename
read -p "Enter the directory to search in: " directory
read -p "Enter the filename to search for: " filename

# Check if the directory exists
if [ ! -d "$directory" ]; then
  echo "Directory does not exist!"
  exit 1
fi

# Use find to locate the file
echo "Searching for '$filename' in '$directory'..."
find "$directory" -type f -name "$filename"
