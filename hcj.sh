#!/bin/bash

##
# hcj.sh
#
# Crée l'aborescence suivante
# avec des fichiers vierges 
# dans le répertoire courant:
#       
#        /
#        |--- index.html
#        |--- css/
#        |     |--- mycss.css
#        |--- js/
#              |--- myjs.js     
#
# Usage :
# hcj

# *** ************************************************************************************** *** 


file_0="index.html"
file_1="mycss.css"
file_2="myjs.js"

directory_1="css"
directory_2="js"

create_dir_file() {
    mkdir $1
    cd $1
    touch $2
    cd ..
}

touch ${file_0}

create_dir_file ${directory_1} ${file_1}
create_dir_file ${directory_2} ${file_2}
