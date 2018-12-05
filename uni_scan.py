import sys,os
x = raw_input('Enter IP:')
os.system('uniscan -u http://' + x + '/ -qd')
