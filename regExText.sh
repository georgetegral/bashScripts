# !/bin/bash
# Programa para entender el uso de expresiones regulares
# Autor: georgetegral

idRegex='^[0-9]{10}$' #Acepta solo números y que sean de 10 caracteres
fechaNacimientoRegex='^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$' #Acepta solo fechas válidas en formato YYYYMMDD
paisRegex='^MX|US|CA' #Acepta solo los códigos de México, Estados Unidos y Canadá

echo "Expresiones regulares"
read -p "Ingresa tu identificación (10 números) " identificacion
read -p "Ingresa le código de tu país [MX, US, CA] " pais
read -p "Ingresa tu fecha de nacimiento [AAAAMMDD] " fechaNacimiento
echo "Identificación: $identificacion, Pais: $pais, Fecha de nacimiento: $fechaNacimiento"

if [[ $identificacion =~ $idRegex ]]
	then
	echo "Identificación válida"
	else 
	echo "Identificación no válida"
fi

if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]
	then
	echo "Fecha de nacimiento válida"
	else
	echo "Fecha de nacimiento no válida"
fi

if [[ $pais =~ $paisRegex ]]
	then
	echo "Pais válido"
	else
	echo "Pais no válido"
fi
