IP=$1

gobuster -u http://$1/ \
  -w /usr/share/seclists/Discovery/Web_Content/common.txt \
  -s '200,204,301,302,307,403,500' -e

gobuster -u http://$1/ \
  -w /usr/share/seclists/Discovery/Web_Content/cgis.txt \
  -s '200,204,301,302,307,403,500' -e
