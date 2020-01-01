# !/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Autor: georgetegral

opcion=0
fechaActual=`date +%Y%m%d`

#Función par instalar postgres
instalar_postgres () {
	echo -e "\nVerificando la instalación de postgres..."
	verifyInstall=$(which psql)
	if [ $? -eq 0 ]; then
		echo -e "\nPostgres se encuentra instalado en el equipo"
	else 
		read -s -p "Ingresar contraseña de sudo: " pass
		read -s -p "Ingresar contraseña a utilizar en postgres: "passPostgres
		echo "$pass" | sudo -S apt update
		echo "$pass" | sudo -S apt-get -y install postgresql postgresql-contrib
		sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$passPostgres}';"
		echo "$pass" | sudo -S systemctl enable postgresql.service
		echo "$pass" | sudo -S systemctl start postgresql.service
	fi
	read -n1 -s -r- p "Presione [ENTER] para continuar..." 
}

#Función para desinstalar postgres
desinstalar_postgres () {
	read -s -p "Ingresar contraseña de sudo: " pass
	echo -e "\n" 
	echo "$pass" | sudo -S systemctl stop postgresql.service
	echo "$pass" | sudo -S apt-get -y --purge remove postgresql\*
	echo "$pass" | sudo -S rm -r /etc/postgresql
	echo "$pass" | sudo -S rm -r /etc/postgresql-common
	echo "$pass" | sudo -S rm -r /var/lib/postgresql
	echo "$pass" | sudo -S userdel -r postgres
	echo "$pass" | sudo -S groupdel postgresql
	read -n1 -s -r- p "Presione [ENTER] para continuar..." 
}

#Función para sacar respaldo
sacar_respaldo () {
	echo "Lista de las bases de datos"
	sudo -u postgres psql -c "\l"
	read -p "Elegir la base de datos a respaldar: " bddRespaldo
	echo -e "\n"
	if [ -d "$1" ]; then
		echo "Establecer permiso al directorio"
		echo "$pass" | sudo -S chmod 755 $1
		echo "Realizando respaldo..."
		sudo -u postgres pg_dump -Fc $bddRespaldo > "$1/bbdRespaldo$fechaActual.bak"
		echo "Respaldo realizado correctamente en la ubicación: $1/bddRespaldo$fechaActual.bak"
	else
		echo "El directorio $1 no existe"
	fi
	read -n1 -s -r- p "Presione [ENTER] para continuar..." 
}

#Función para restaurar respaldo
restaurar_respaldo () {
	echo "Listar respaldos"
	read -p "Ingresar el directorio donde están los respaldos: " directorioBackup
	ls -la $directorioBackup
	read -p "Elegir el respaldo a restaurar" respaldoRestaurar
	echo -e "\n"
	read -p "Ingrese el nombre de la base de datos destino: " bddDestino
	#Verificar si la bdd existe
	verifyBdd=$(sudo -u postgres psql -lqt | cut-d \| -f 1 | grep -wq $bddDestino)
	if [ $? -eq 0 ]; then
		echo "Restaurando en la bdd destino: $bddDestino"
	else
		sudo -u postgres psql -c "create database $bddDestino"
	fi

	if [ -f "$1/$respaldoRestaurar" ]; then
		echo "Restaurando respaldo..."
		sudo -u postgres pg_restore -FC -d $bddDestino "$directorioBackup/$respaldoRestaurar"
		echo "Listar la base de datos"
		sudo -u postgres psql -c "\1"
	else
		echo "El respaldo $respaldoRestaurar no existe"
	fi

	read -n1 -s -r- p "Presione [ENTER] para continuar..." 
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
