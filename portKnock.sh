SERVER=$1

PORTS=(21 22 23 25 587 465 139 445 161 80 443 512 513 514 143 993 110 995 1443 3306 3389 2049 1524 1099 5900 6667)

for PORT in "${PORTS[@]}" 
do
	state=`nmap -p $PORT $SERVER | grep "$PORT" | grep open`
	if [ -z "$state" ]; then
	  tput setaf 1;echo "Connection to $SERVER on port $PORT has failed"
	else
	  tput setaf 14;echo "Connection to $SERVER on port $PORT was successful"
	fi
done
