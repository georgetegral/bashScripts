# !/bin/bash
# Programa que pide datos personales y luego los imprime 
# Autor: georgetegral

name=""
lastName=""
age=""
number=""

read -p "Coloca tus nombres: " name
read -p "Coloca tus apellidos: " lastName
read -p "Coloca tu edad: " age
read -p "Coloca tu teléfono: " number
echo -e "\n"
echo "Nombre: $name, Apellidos: $lastName, Edad: $age, Teléfono: $number"
