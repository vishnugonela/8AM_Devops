#!/bin/bash
read -p "region : " a_r
read -p "instance_type : " i_type
read -p  "ami_id : " ami_id
read -p  "keypair :" key
read -p  "sg_id : " sg_id


# Create the EC2 instance
echo "Creating AWS EC2 instance"
instance_id=$(aws ec2 run-instances \
    --region "${a_r}" \
    --image-id "${ami_id}" \
    --instance-type "${i_type}" \
    --key-name "${key}" \
    --security-group-ids "${sg_id}" )
    
   


if [ -n "$instance_id" ]; 
then
    echo "Instance created with ID: $instance_id"
else
    echo "Failed to create the instance"
fi
