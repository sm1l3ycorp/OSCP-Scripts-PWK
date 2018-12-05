import sys,os

x = raw_input('Enter IP:')

print('\nNmap TCP Scan Started...\n')
os.system('nmap -sS -sV -sC -n ' + x)
print('\nTCP Scan Completed.')

print('\nNmap UDP Scan Started...\n')
os.system('nmap -sU -sV -n --top-ports 200 ' + x)
print('\nNmap UDP Scan Completed.')
