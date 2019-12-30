# !/bin/bash
# Programa para ejemplificar como capturar la información del usuario utilizando el comando read 
# Autor: georgetegral

option=0
backupName=""

echo "Programa Utilidaes Postgres"
read -p "Ingresar una opción:" option
read -p "Ingresar el nombre del archivo del backup:" backupName 
echo "Opción:$option, backupName:$backupName"
