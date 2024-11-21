#!/bin/bash

#Redirects ouput
command > /dev/null 2>&1

#Installs necessary applications.
apt update
apt upgrade -y
apt install xrdp -y
apt install nmap -y

