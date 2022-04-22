#!/bin/bash

choix=9
echo "Projet 1 Scripting"
echo "            By [MOHAMED AMINE ZARGA] & [ZEINEB HARAKETI] "
echo ""
echo "######################"
echo "1. Afficher la commande lshw.	"
echo "2. Afficher la commande lscpu."
echo "3. Afficher la commande help."
echo "4. Afficher le menu graphique."
echo "5. Sauvegarder les informations les plus pertinents."
echo "6. Afficher la version et les noms des auteurs."
echo "7. Afficher les informations les plus pertinentes."
echo "8. Afficher les lignes contenant le MOT_CLE à partir d’ un fichier."
echo "9. EXIT"
echo "######################"
echo ""
echo -n "Veuillez Selectionner un nombre entre 1-9 ! "

while [ $choix -eq 9 ]; do
	read choix
	#Affichage des caractérisques hardwares
	if [ $choix -eq 1 ] ; then
		echo "Affichage les caractérisques hardwares de la machine"
		
                    #cat lshw.txt
                     lshw
		
	else
			#affichage les caractérisques hardwares du processeur
			if [ $choix -eq 2 ] ; then
				echo "affichage les caractérisques hardwares du processeur"
				#cat lscpu.txt
                                lscpu
				
			else	 
					#Help
					if [ $choix -eq 3 ] ; then
					 cat /etc/help.txt
					
					else
						#MenuGraphique
						if [ $choix -eq 4 ] ; then
							echo "affichage de menu graphique"
							./WhipCop.sh
							
						else 
						#Sauvgarder
						if [ $choix -eq 5 ] ; then
						echo "Sauvegardation des informations"
                                                  chmod u+x Save.sh
						   bash Save.sh					

						else
							#Version
							if [ $choix -eq 6 ] ; then
							echo "Version et auteur "
								#cat version.txt 
                                                          cat /etc/os-release
							else
							# informations les plus pertinentes
							if [ $choix -eq 7 ] ; then 
							
							echo "afficher les informations les plus pertinentes"
							 chmod u+x option8.sh
                                                          bash option8.sh

							else
                                                          if [ $choix -eq 8 ] ; then 
                                                              
							#afficher les lignes contenant le mot_cle a partir d'un fichier
						echo "affichage des lignes contenant le mot_cle a partir d'un  fichier"
							--filtrer
                                                         else if [ $choix -eq 9 ] ; then 
                                                         exit 0
							
							
							
									fi
									
									fi
					
									fi
								fi
							fi
						fi
					fi
			fi
	fi
	
done
