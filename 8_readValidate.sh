# !/bin/bash
# Programa para ejemplificar como capturar la información del usuario y validarlo 
# Autor: georgetegral

option=0
backupName=""
clave=""

echo "Programa de Utilidades Postgres"
#Acepta el ingreso de información de solo un caracter
read -n1 -p "Ingresar una opción (un caracter):" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup (10 caracteres):" backupName 
echo -e "\n"
echo "Opción:$option, backupName:$backupName"
read -s -p "Clave:" clave
echo "Clave: $clave"
