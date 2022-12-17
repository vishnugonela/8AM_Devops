#! /bin/bash


# Shell Scripting for Validating User_Name & Password
# --------------------------------------------------


    read -p "Enter UserName: " username
    
    if [ $username != "YOGI" ]
	then
	    echo -e "\n user $username is not valid \n"
	    exit 1
    fi
	
    echo "$username"> /dev/null
	
    if [ "$username" == "YOGI" ]
	then
	    echo -e "\n user $username is Accepted \n"
    fi
		
		
    read -p "Enter your password: " password
	
    length=`echo ${#password}`
	
    if [[ $length -lt 8 ]]
	then
	    echo -e "\n Password must be of atleast 8 characters! \n"
	    exit 1
    fi
		
    echo "$password" > /dev/null

    echo $password | grep "[a-z]" | grep "[A-Z]" | grep "[0-9]" | grep "[@#$%^&*]"
	
    if [[ $? -ne 0 ]]
	then
	    echo -e "\n Password must contain atleast 1 uppercase, lowercase, digits and special characters \n"
	    exit 2
    fi
	
    echo -e "\n $password is Accepted password \n"

    echo -e "Login Successful"
