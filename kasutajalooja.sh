#!/bin/bash
# Kasutajate loomiseks mõeldud lühike skript 

fail=$1
for kasutaja in $(cat $fail)
	do
		source ./kasutaja.sh $kasutaja
	done
fi
