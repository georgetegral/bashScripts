# !/bin/bash
# Programa para ejemplificar el uso de la sentencia case 
# Autor: georgetegral

opcion=""

echo "Ejemplo sentencia case"
read -p "Ingrese una opcion de la A - Z: " opcion
echo -e "\n"

case $opcion in 
	"A") echo -e "\nOperación Guardar Archivo";;
	"B") echo -e "\nOpeacioón Eliminar Archivo";;
	[C-E]) echo -e "\nNo está implementada la operación";;
	"*") echo -e "\nOpción incorrecta";;
esac
