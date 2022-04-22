#! /bin/bash

while getopts "u" option
do
        echo"getopts a trouvé l'option $option"
        case $option in
           u) echo "option trouvé "
                   lscpu
                   ;;
        esac
done
echo"option trouvé"

