#!/bin/bash

# Date: 23/06/2025
#
# Author: Santosh Sethy
#
# Write a shell script to accept input from user as their username only.
#   a. username must be 'string'
#   b. username must be 'UPPERCASE'
#   c. username should not contain spaces
#
#version:1
#
#set -x # debug mode


# Prompt the user to enter a username
read -p "Enter your username (UPPERCASE, no spaces): " username

# Validate the username: must be UPPERCASE letters only, no spaces
if [[ "$username" =~ ^[A-Z]+$ ]]; then
    echo "Valid username: $username"
else
    echo "Invalid username. It must be UPPERCASE letters only with no spaces."
fi
