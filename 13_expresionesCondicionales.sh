# !/bin/bash
# Programa para ejemplificar el uso de expresiones condicionales
# Autor: georgetegral

edad=0
pais=""
pathArchivo=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path de su archivo: " pathArchivo

echo -e "\nExpresiones Condicionales con números"
if [ $edad -lt 10 ]; then
	echo "La persona es un menor"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then
	echo "La persona es un adolescente"
else
	echo "La persona es mayor de edad"
fi

echo -e "\nExpresiones Condicionales con cadenas"
if [ $pais = "MX" ]; then
	echo "La persona es mexicana"
elif [ $pais = "US" ] || [ $pais == "CA" ]; then
	echo "La persona es norteamericana"
else
	echo "Se desconoce la nacionalidad"
fi


echo -e "\nExpresiones Condicionales con archivos"
if [ -d $pathArchivo ]; then
	echo "El directorio $pathArchivo existe."
else
	echo "El directorio $pathArchivo no existe."
fi

