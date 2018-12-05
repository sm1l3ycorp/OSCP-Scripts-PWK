IP=$1
echo 'NMAP Light Scan'
nmap nmap -sU -sV -n --top-ports 200 $1
