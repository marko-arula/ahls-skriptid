#!/bin/bash

#See skript paigaldab meile PHP teenuse 


# See kontrollib kas PHP teenus on juba olemas
PHP=$(dpkg-query -W -f='${Status}' php>/dev/null | grep -c 'ok installed')

# Kui PHP ei ole olemas
if [ $PHP -eq 0 ]; then
	echo "PHP paigaldatakse"
	apt install php libapache2-mod-php php-mysql
	echo "PHP on installitud"
  
# Kui PHP on olemas, siis kuvatakse teade
elif [ $PHP -eq 1 ]; then
	echo "PHP on juba installeeritud"
	which php

fi
