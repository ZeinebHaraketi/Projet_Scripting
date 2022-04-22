#!/bin/bash


echo "Ceci est le fichier : $fichier"
read fichier


#for fichier in `ls /home/zeineb`
#do
if [ -e $fichier ]
then
    echo "$fichier existe"
    grep ^[a-d] $fichier | cp $fichier save2.txt
    if [ -s save2.txt ]
    then
     echo "sauvegarde accomplie avec succées"
     else
     echo "sauvegarde échoué"
    fi
   
else
    echo "$fichier n'existe pas"
fi
#done
