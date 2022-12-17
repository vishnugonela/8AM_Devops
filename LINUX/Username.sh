#! /bin/bash


# Shell Scripting for Verifying a User
# ------------------------------------


#    echo -e "\n Enter User_Name:"
#    read username
		
#    if [ $username == "YOGI" ]
	
#	then
			
#		echo -e "\n user $username is Accepted"
#	else
		
#		echo -e "\n user $username is not Accepted"
#    fi	
		
#   ------------------ ALTERNATIVELY------------------------		
		
    read -p "Enter User_Name:" username
    
    echo $username | grep "YOGI"
    
    if [ $? -eq 0 ]
	then
		echo -e "\n user $username is Accepted"
	else
		echo -e "\n user $username is not Accepted"
    fi

