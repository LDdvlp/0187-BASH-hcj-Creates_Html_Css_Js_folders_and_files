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

# Nom du répertoire courant
working_directory_name=${PWD##*/} 
echo 1.   ${working_directory_name}

# Chemin du répertoire courant
working_directory_path=`pwd` 
echo 2.   ${working_directory_path}

# Chemin du répertoire parent
cd ..
parent_directory_path=`pwd`
echo 3.   ${parent_directory_path}

#working_directory_name_with_escaped_spaces=`echo ${working_directory_name} | sed 's/ /\\ /g'`
echo 4.
#echo ${working_directory_name} | sed 's/ /\\ /g'>${working_directory_name}/temp_var.txt 
working_directory_name_with_escaped_spaces=`echo ${working_directory_name} | sed 's/ /\\ /g'`
echo ${working_directory_name_with_escaped_spaces}

pwd
#echo 4.  ${working_directory_name_with_escaped_spaces}
#echo Mot1 Mot2 Mot3 Mot4 Mot5 | sed 's/ /\\ /g'





#cd ${working_directory_name}

# Renommage du nom du répertoire courant en remplaçant les espaces par "_" (underscore)
#working_directory_name_without_space=`echo ${working_directory_name} | tr ' ' '_'`
#echo 5.   ${working_directory_name_without_space}

# Nouveau chemin du répertoire courant
#working_directory_new_path=${parent_directory_path}/${working_directory_name_without_space}
#echo 6.   ${working_directory_new_path}

#pwd

# Renommage du chemin du répertoire courant
#mv ${working_directory_path}/ ${working_directory_new_path}/



#working_directory_name_no_space=`echo ${working_directory_name} | tr ' ' '_'`
#echo ${working_directory_name_no_space}
#working_directory_path_no_space=`echo ${working_directory_path} | tr '${working_directory_name} ' '3'`
#echo ${working_directory_path_no_space}

#working_directory_no_space=`pwd | tr ' ' '_'`
#echo ${working_directory_no_space}




#working_directory=${PWD##*/} 
#echo ${result}

#echo ${working_directory}
#echo ${working_directory_no_space}
#mv ${working_directory}/ ${working_directory_no_space}/
#touch ${working_directory}/index.html

#
## Fichier temporaire pour numéro de version actuel de Git
##temp_file_1="nowGitVersion.txt"
## Url de la dernière version de Git 
##latest_source_release_url="https://git-scm.com/downloads"
## Fichier temporaire pour dernier numéro de version de Git
##temp_file_2="latestGitVersion.txt"
#
## *** ************************************************************************************** *** 
#
## Extraction du numéro de version actuel
##nowVersion=`git --version`
##echo ${nowVersion} > ${myPath100}${temp_file_1}
##nowVersion=`cut -d ' ' -f 3 ${myPath100}${temp_file_1}`
##echo ${nowVersion} > ${myPath100}${temp_file_1}
##nowVersion=`cut -d '.' -f 1-3 ${myPath100}${temp_file_1}`
#echo ${nowVersion} > ${myPath100}${temp_file_1}
#
## *** ************************************************************************************** *** 
#
## Extraction du numéro de version à venir
#
#
## Télécharge HTML dernière version de Git dans fichier latestGitVersion.txt
## Paramètre --silent : supprime les statistiques 
#curl --silent ${latest_source_release_url} > ${myPath100}${temp_file_2}
#
## Récupération HTML partiel dans une variable, comprenant le dernier numéro de version de Git
#latestVersion=`grep -A 1 "span class=\"version\"" ${myPath100}${temp_file_2}`
#
## Envoi le l'extraction de texte dans le fichier temporaire (Réécriture totale)
#echo ${latestVersion} > ${myPath100}${temp_file_2}
#
## Découpage du numéro de version dans une variable
#latestVersion=`cut -d ' ' -f 3 ${myPath100}${temp_file_2}`
#echo ${latestVersion} > ${myPath100}${temp_file_2}
#
## *** ************************************************************************************** *** 
#
## Affichage des versions de Git pour Windows
#echo ""
#echo "************************************"
#echo "*   Versions de Git pour Windows   *"
#echo "************************************"
#echo ""
#echo "Version installée : ${nowVersion}"
#echo "Dernière version  : ${latestVersion}"
#echo ""
#
## Récupération des nombres des numéros de versions dans des variables
#nowVersionNumber_1=`cut -d '.' -f 1 ${myPath100}${temp_file_1}`
#latestVersionNumber_1=`cut -d '.' -f 1 ${myPath100}${temp_file_2}`
#
#nowVersionNumber_2=`cut -d '.' -f 2 ${myPath100}${temp_file_1}`
#latestVersionNumber_2=`cut -d '.' -f 2 ${myPath100}${temp_file_2}`
#
#nowVersionNumber_3=`cut -d '.' -f 3 ${myPath100}${temp_file_1}`
#latestVersionNumber_3=`cut -d '.' -f 3 ${myPath100}${temp_file_2}`
#
#### TESTING ###################################################################################################################################
##echo "Version installée en numéros décomposés        : ${nowVersionNumber_1}  ${nowVersionNumber_2}  ${nowVersionNumber_3}"
##echo "Dernière version en numéros décomposés         : ${latestVersionNumber_1}  ${latestVersionNumber_2}  ${latestVersionNumber_3}"
#
##latestVersionNumber_1=2
##latestVersionNumber_2=37
##latestVersionNumber_3=4
##echo "Dernière version fictive en numéros décomposés : ${latestVersionNumber_1}  ${latestVersionNumber_2}  ${latestVersionNumber_3}"
#
##echo ""
#
##dl()
###{
##    information="Mise à jour possible, suite à comparaison au nombre numéro ${1} dans le numéro de version."
##    echo "${information}"
##}
#### TESTING ###################################################################################################################################
#
## Définitions des fonctions de mise à jour et confirmation
#
#miseAJourGitPourWindows()
# {
#    echo ""
#    git update-git-for-windows
#    ### TESTING ###
#    #echo ""
#    #echo "Mise en jour en cours ..."
#    ### TESTING ###
#}
#
#suppressionFichiersTemporaires()
# {
#    rm ${myPath100}${temp_file_1}
#    rm ${myPath100}${temp_file_2}
#}
#
#confirmationMiseAJour()
# {   suppressionFichiersTemporaires
#    read -p "Télecharger et mettre à jour ? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
#    miseAJourGitPourWindows
#}
#
#informationDerniereVersionInstallee()
# {
#    echo "Dernière version installée, donc pas de mise à jour."
#    suppressionFichiersTemporaires
#}
#
## Comparaison des numéros de versions
#
#if [[ "${nowVersionNumber_1}" -lt "${latestVersionNumber_1}" ]]
#then
#    ### TESTING ###
#    #dl "1"
#    ### TESTING ###
#    confirmationMiseAJour    
#    elif [[ "${nowVersionNumber_2}" -lt "${latestVersionNumber_2}" ]]
#    then
#        ### TESTING ###
#        #dl "2"
#        ### TESTING ###
#        confirmationMiseAJour
#        elif [[ "${nowVersionNumber_3}" -lt "${latestVersionNumber_3}" ]]
#        then
#            ### TESTING ###
#            #dl "3"
#            ### TESTING ###
#            confirmationMiseAJour
#            else
#                informationDerniereVersionInstallee
#fi
#