#!/bin/bash
# Date: 23/06/2025
#
# Author: Santosh Sethy
#
#Write a shell script to print file content details.Like No of Words, lines, characters.  
#You must accept input from the user.
#
#version:1
#
#set -x # debug mode

# Taking input from users
#
#
# Prompt the user for the filename
read -p "Enter the filename: " filename

# Check if the file exists
#if [[ -f "$filename" ]];
#then
    # Get the number of lines, words, and characters
    lines=$(wc -l < "$filename")
    words=$(wc -w < "$filename")
    characters=$(wc -m < "$filename")

    # Display the results
    echo "File: $filename"
    echo "Number of lines: $lines"
    echo "Number of words: $words"
    echo "Number of characters: $characters"
#else
    #echo "Error: File '$filename' not found!"
#fi
