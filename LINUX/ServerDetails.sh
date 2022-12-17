#! /bin/bash


# Shell Scripting for Server_Details
# ----------------------------------


	echo -e "\n The name of this system is:" `hostnamectl`
	
	
	echo -e "\n The Ip address of this system is:" `hostname -I`
	
	
	echo -e "\n The size of the memory is:" `free -h`
	
	
	echo -e "\n The CPU information is:" `mpstat`
	
	
	echo -e "\n This disk utilization is:" `du -h /root`
	
