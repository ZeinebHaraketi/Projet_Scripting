#!/bin/bash

while getopts "wuhgmvs:o:" option
do
	echo"getopts a trouvé l'option $option"
	case $option in
          
         w) 
			echo "option w trouvé "
		   lshw
		   ;;

         #éxecution réussie.
         u) 
			echo "option u trouvé "
		   lscpu
		   ;;
         #éxecution réussie.
         h)
                         echo "option h trouvé"
                   cat /etc/help.txt
                   ;;
         #éxecution réussie.
         g)
                        echo "option g trouvé"
                   chmod u+x WhipCop.sh
                   ./WhipCop.sh
                   ;;
         m)
                echo "option m trouvé"
                chmod u+x MenuT.sh
                bash MenuT.sh
                   ;;
         #éxecution réussie.
         v)
                        #bash --version
                        cat /etc/os-release
                        echo " Voici maintenant les noms des auteurs"
                        cat /etc/passwd
                     ;;
        s)  
            echo "option s trouvé"
            chmod u+x Save.sh
            echo "Voici la Sauvegarde : "
            bash Save.sh
                    ;;
        o)

         echo "option o trouvé"
         chmod u+x option8.sh
         bash option8.sh
                   ;;
  

      \?) echo "$OPTARG : option invalide "
          exit 1
           ;;
	esac
done
echo "Analyse des options terminées "
exit 0
