#!/bin/bash

#Käsu parameetrid ($1 määrab missugusest failist võetakse kasutajanimed ja $2 määrab kasutajatele salasõna)
fail=$1
passwd=$2

for kasutaja in $(cat $fail)
        do
        
		    # see loob kasutaja
		    useradd $kasutaja -m -s /bin/bash
      done
      
for salasona in $(cat $passwd)
	do
		echo "$kasutaja:$salasona" | chpasswd
	done
