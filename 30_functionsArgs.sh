# !/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: georgetegral

opcion=0

#Función par instalar postgres
instalar_postgres () {
	echo -e "\nInstalar postgres..."
}

#Función para desinstalar postgres
desinstalar_postgres () {
	echo -e "\nDesinstalar postgres..."
}

#Función para sacar respaldo
sacar_respaldo () {
	echo -e "\nSacar respaldo..."
	echo "Directorio del backup: $1"
}

#Función para restaurar respaldo
restaurar_respaldo () {
	echo -e "\nRestaurar respaldo..."
	echo "Directorio respaldo: $1"
}

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
			instalar_postgres
			sleep 3
			;;
		2)
			desinstalar_postgres
			sleep 3
			;;
		3)	
			echo -e "\n"
			read -p "Directorio del backup: " directorioBackup
			sacar_respaldo $directorioBackup
			sleep 3
			;;
		4)
			echo -e "\n"
			read -p "Directorio del respaldo: " directorioRespaldo
			restaurar_respaldo $directorioRespaldo
			sleep 3
			;;
		5)
			echo -e "\nSalir del programa"
			exit 0
			;;
	esac
done		
