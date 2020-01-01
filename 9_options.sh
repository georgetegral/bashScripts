# !/bin/bash
# Programa para ejemplificar como se realiza el paso de opciones con o sin parámetros 
# Autor: georgetegral

echo "Programa de opciones"
echo "Opción 1 enviada: $1"
echo "Opción 2 enviada: $2"
echo "Opciones enviadas: $*"
echo -e "\n"
echo "Recuperar valores"
while [[ -n "$1" ]]
do
case "$1" in
-a) echo "-a opcion utilizada";;
-b) echo "-b opcion utilizada";;
-c) echo "-c opcion utilizada";;
*) echo "$! no es una opción";;
esac
shift
done
