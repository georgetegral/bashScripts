# !/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: georgetegral

opcion=0

#While infinito se logra con los dos puntos
while :
do
	#Limpiar la pantalla
	clear
	#Desplegar el menú de opciones
	echo "_________________________________________"
	echo "PGUTIL - Programa de Utilidad de Postgres"
	echo "_________________________________________"
	echo "	Menú Principal"
	echo "_________________________________________"
	echo "1. Instalar Postgres"
	echo "2. Desinstalar Postgres"
	echo "3. Sacar un respaldo"
	echo "4. Restaurar respaldo"
	echo "5. Salir"

	#Leer los datos del usuario - capturar información
	read -n1 -p "Ingrese una opción [1-5]: " opcion

	#validar la opción ingresada
	case $opcion in
		1)
			echo -e "\nInstalar Postgres"
			sleep 3
			;;
		2)
			echo -e "\nDesisntalar Postgres"
			sleep 3
			;;
		3)
			echo -e "\nSacar respaldo"
			sleep 3
			;;
		4)
			echo -e "\nRestaurar respaldo"
			sleep 3
			;;
		5)
			echo -e "\nSalir del programa"
			exit 0
			;;
	esac
done		
