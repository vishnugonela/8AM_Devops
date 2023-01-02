echo -e "\ enter ip adress"
read ip 

if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "valid ip address"
else
  echo "invalid ip address please check the ip address entered."
fi