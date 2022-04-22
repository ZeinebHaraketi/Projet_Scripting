#!/bin/bash


echo "Ceci est le fichier : $fichier"
read fichier


#for fichier in `ls /home/zeineb`
#do

function affiche(){
if [ -e $fichier ]
then

echo "$fichier existe"
cat save2.txt

else
echo "$fichier introuvable"
fi
#done


}

affiche

