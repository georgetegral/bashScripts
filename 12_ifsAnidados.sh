# !/bin/bash
# Programa para ejemplificar el uso de ifs anidados 
# Autor: georgetegral

calif=0
continua=""

echo "Ejemplo sentencia if/else"
read -n1 -p "Introduzca su calificación (1-9): " calif

if [ $calif -ge 7 ]; then
	echo -e "\n"
	echo "El alumno ha aprobado"
	read -p "Continuará estudiando en el siguiente nivel (s/n): " continua
	if [ $continua = "s" ]; then
		echo "Bienvenido al siguiente nivel"
	else
		echo "Gracias por estudiar con nosotros"
	fi
else 
	echo "El alumno ha reprobado"
fi
