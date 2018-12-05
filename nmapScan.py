import sys,os

x = raw_input('Enter IP:')
os.system('nmap -sV -O ' + x)
