#!/bin/bash
# Date: 23/06/2025
#
# Author: Santosh Sethy
#
#  Write a shell script to find your server IPV4 address,
#   a. validate IPV4 address format only.
#   b. Filter only IPV6
#
#version:1
#
#set -x # debug mode
#
# Extract the primary non-loopback IPv4 address
IPV4=$(ip -4 addr show | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | grep -v '^127\.' | head -n 1)

# IPv4 validation using regex
if [[ $IPV4 =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
    echo "Found IPv4 Address: $IPV4"
    echo "IPv4 format is valid."
else
    echo "Invalid IPv4 format or no address found."
fi
