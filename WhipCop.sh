#!/usr/bin/env bash

## Util Methods:
function displayMessage() {
    whiptail --title "$1" --msgbox "$2" 8 78
}



function main() {
while true; do
        demo=$(whiptail --title "Menu Graphique" --ok-button "Selectionner" --cancel-button "Quit" --menu "Selectionner une option" 20 78 10 \
            "1" "Afficher la commande lshw." \
            "2" "Afficher la commande lscpu." \
            "3" "Afficher la commande help." \
            "4" "Afficher le menu graphique." \
            "5" "Afficher le menu textuel." \
            "6" "Sauvegarder les informations les plus pertinents." \
            "7" "Afficher la version et les noms des auteurs." \
            "8" "Afficher les informations les plus pertinentes." \
            "9" "Afficher les lignes contenant le MOT_CLE à partir d’ un fichier." \
            3>&1 1>&2 2>&3)

        exitstatus=$?

        if [ ${exitstatus} = 0 ]; then
            case ${demo} in
                1)
                    
                    # execution de la commande dans la fonction option1
                    # on execute lshw dans le terminale et après > lshw.txt (lshw > lshw.txt)
                    # on lit le fichier lshw.txt dans le menu Graphique
                   displayMessage "Option 1" "Vous avez choisi l'option 1 !"
                    
                   option1

                ;;
                2)
                    # execution de la commande dans la fonction option2
                    # on execute lscpu dans le terminale et après > lscpu.txt (lscpu > lscpu.txt)
                    # on lit le fichier lscpu.txt dans le menu Graphique

                    displayMessage "Option 2" "Vous avez choisi l'option 2 !"
                    
                    
                    option2
                ;;
                3)
                    # execution de la fonction 3 "affciher le fichier help.txt qui se trouve sur le rép /etc/"
                    # on lit le fichier dans le menu Graphique

                    displayMessage "Option 3" "Vous avez choisi l'option 3 !"
                    
                    
                    
                    option3
                ;;
                4)
                    # execution de la fonction menu 
                    # affichage d'un message que nous sommes dans le menu graphique
                    
                    displayMessage "Option 4" "Vous avez choisi l'option 4 !"
                    
                    
                    Menu

                    chmod u+x WhipCop.sh
                    bash WhipCop.sh

                ;;
                5) 
                    # execution du menu textuelle
                  displayMessage "Menu Textuelle" "Vous etes dans le Menu Textuelle !" 
                  chmod u+x MenuT.sh
                  bash MenuT.sh
                ;;
                6)
                    # execution de l'option 6
                   
                    option6 
                ;;
                7)
                    # execution de l'option 7 
                    # affichage d'un message entre l'execution de la commande version et la commandes des auteurs
   
                    displayMessage "Option 7" "Vous avez choisi l'option 7 !"
                    
                    option7
                    
                ;;
                8)
                     #progressGuageDemo
                     option8
                ;;
                9)
                   
                ;;

            esac
        else
            exit
        fi
    done
}


function messageBoxDemo() {
    whiptail --title "Message Box Demo" --msgbox "This is an example of a message box. You must hit OK to continue." 8 78
}

function option1() {
    whiptail --textbox lshw.txt 30 90 --scrolltext
}

function option2() {
    whiptail --textbox lscpu.txt 30 90 --scrolltext
}

function option3() {
    whiptail --textbox /etc/help.txt 30 90 --scrolltext
}

function Menu() {
    displayMessage "Menu Graphique" "Vous etes dans le Menu Graphique !"

}

function option6(){

chmod u+x Save.sh
bash Save.sh
displayMessage "Sauvegarde" "Sauvegarde effectuée avec succées !"
}

function option7() {
    whiptail --textbox version2.txt 30 90 --scrolltext
    displayMessage "les Auteurs" "Afficher les auteurs"
    whiptail --textbox version.txt 30 90 --scrolltext
   
}

function option8(){
progressGuageDemo


#cat save2.txt

#whiptail --textbox save2.txt 30 90 --scrolltext
#whiptail --textbox option8.sh 40 100 --scrolltext

whiptail --textbox ss.txt 30 90 --scrolltext
}



function progressGuageDemo() {
    {
        for ((i = 0 ; i <= 100 ; i+=5)); do
            sleep 0.1
            echo $i
        done
    } | whiptail --gauge "S'il vous plait veuillez attendre la fin du chargement de votre fichier..." 6 50 0

}


main








