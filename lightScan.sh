IP=$1
echo 'NMAP Light Scan'
nmap $1 --top-ports 10 --open
