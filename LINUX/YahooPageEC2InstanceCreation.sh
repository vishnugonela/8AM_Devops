#! /bin/bash

# Shell Script For Creating An Yahoo Page in  EC2 Instance
# ----------------------------------------
  set -u

  read -p "Enter A Package Name:" package
  
  if yum list installed $package
    then
  	
        echo -e "\n The Package is already Installed \n"
    
    else
        
        sudo yum install $package -y
        echo -e "\n The Package is Installed now \n"
    
  fi

  echo "$package" > /dev/null

  if aws --version
    then

	  sudo ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update
          echo -e "\n AWS CLI is already Installed \n"
    
    else

	  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && sudo ./aws/install
    	  echo -e  "\n AWS CLI is installed now \n"
 
  fi
  
  echo "sudo ./aws/install" > /dev/null
        
  	 if aws configure
           then
              read -p "Enter your ImageId:" imageid
              read -p "Enter your Instance type:" instancetype
              read -p "Enter count of instances you want to create:" count
              read -p "Enter your Security group name:" SGname
              read -p "Enter your Keypair name:" Keyname
	      read -p "Enter your User Data Script init path:" path # Before  creating this instance we have to add a yahoo page script in a file.that file haveto give her
			  
              if aws ec2 run-instances --image-id $imageid  --instance-type $instancetype --count $count --security-groups $SGname --key-name $Keyname --user-data file://$path
                   then
                       echo -e "\n Your EC2 Instance Is Created Successfully \n"
					
              fi
			
        fi
  

