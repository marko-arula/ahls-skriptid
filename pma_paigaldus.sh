#!/bin/bash

# Kontrollime PMA olemasolu
PMA=$(dpkg-query -W -f='$(Status)' phpmyadmin 2>/dev/null | grep -c 'ok installed')

# Juhul kui PMA puudub
if [ $PMA -eq 0 ]; then
	echo "phpmyadmin paigaldatakse"
	apt install phpmyadmin
	echo "phpmyadmin on olemas"
  
# Juhul kui PMA on olemas
elif [ $PMA -eq 1 ]; then
	echo "phpmyadmin on olemas"
fi
