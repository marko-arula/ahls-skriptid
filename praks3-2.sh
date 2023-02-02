#!/bin/bash
echo "Sisetage kaust, mida soovite varundada. (Sisetage kogu tee, millel on jutumärgid)"
read kaust

echo "Sisetage siht, kuhu on soov varundused salvestada. (Sisetage kogu tee, millel on jutumärgid)"
read siht

if [[ ! -z "$kaust" ]]; then
  kuupaev=`date +%d.%m.%Y`
  tar -c -f $filename.$kuupaev.tar $filename/
  gzip $filename.$kuupaev.tar
  mv $filename.$kuupaev.tar.gz $siht

else
  echo "Sisestage Kausta tee oigesti, kogu tee ja jutumargid"

fi
