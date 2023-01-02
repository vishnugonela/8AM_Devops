#!/bin/bash
read -p "please enter username:" uname 
read -p "Please enter password: " PASS
COUNT=`echo ${#PASS}`
if [[ $COUNT -lt 8 ]]; then
echo "Password must be of atleast 8 characters!"
exit 1
fi
echo "$PASS"
echo $PASS | grep "[a-z]" | grep "[A-Z]" | grep "[0-9]" | grep "[@#$%^&*]"
if [[ $? -ne 0 ]]; then
echo "Password must contain atleast 1 uppercase, lowercase, digits and special characters"
exit 2
fi
echo "Strong Password"

