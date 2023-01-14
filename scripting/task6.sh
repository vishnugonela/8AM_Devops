#!/bin/bash
ip=$(hostname -I | awk '{print $1}')
echo $ip
if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "success"
else
  echo "fail"
fi
