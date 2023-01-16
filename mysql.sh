#!/bin/bash

MYSQL=$(dpkg-query -W -f='$(Status)' mysql-server 2>/dev/null | grep -c 'ok installed')
if [ $MYSQL -eq 0 ]; then
	echo "MySQL paigaldatakse"
	apt update
	apt upgrade
	apt install mysql-server
	systemctl start mysql.service

# Juhul kui mysql on juba olemas
elif [ $MYSQL -eq 1 ]; then
	echo "MySQL on juba paigaldatud"
	mysql
fi
