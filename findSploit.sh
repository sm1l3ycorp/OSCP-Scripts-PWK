VULN=$1
searchsploit --colour -t $VULN | grep -v '/dos/'
