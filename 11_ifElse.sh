# !/bin/bash
# Programa para ejemplificar el uso de if else 
# Autor: georgetegral

edad=0

echo "Ejemplo sentencia if/elif/else"
read -p "Introduzca su edad: " edad

if [ $edad -le 0 ]; then
	echo "La persona no ha nacido"
elif [ $edad -ge 1 ] && [ $edad -le 13 ]; then
	echo "La persona es un niño"
elif [ $edad -le 18 ]; then
	echo "La persona es un adolecente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
	echo "La persona es un adulto"
elif [ $edad -ge 65 ] && [ $edad -le 90 ]; then
	echo "La persona es mayor"
else
	echo "La persona es anciana"
fi
