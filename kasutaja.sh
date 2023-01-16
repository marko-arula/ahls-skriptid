#!/bin/bash

# Kasutaja loomise skript

echo "Teile luuakse kasutaja nimega $Kasutajanimi koos kataloogiga"
echo "Kasutaja tegemise ajal küsitakse hetkeks salasõna, aga see eemaldatakse pärast kasutaja loomist automaatselt."
# Kasutaja luuakse, küsitakse muid parameeterid nagu password
sleep 2
# $1 Näitab missugune kasutajanimi antakse loodavale kasutajale. $1 on esimene shelliskriptile edastatud käsurea argument $2 on teine ja nii edasi.
useradd $1 -m -s /bin/bash

passwd -d $1
