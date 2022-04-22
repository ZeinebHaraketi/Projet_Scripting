#!/bin/bash


function rechercheMot(){
echo "Veuillez entrer la chaine : "
read mot

chmod u+r+x option8.sh

#grep --include= *.sh 

if [ -s option8.sh ] 
then
grep -w $mot

else
echo "$mot introuvable"

fi



exit 0
}

rechercheMot
