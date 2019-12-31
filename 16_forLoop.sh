# !/bin/bash
# Programa para ejemplificar el uso de iteración for 
# Autor: georgetegral

arregloNumeros=(1 2 3 4 5 6)

echo "Iterar en la lista de números"
for num in ${arregloNumeros[*]}
do
	echo "Número: $num"
done

echo "Iterar en una lista de cadenas"
for nom in "Jorge" "Jessica" "Mario" "Carlos"
do
	echo "Nombres: $nom"
done

echo "Iterar en archivos"
for file in *
do
	echo "Nombre del archivo: $file"
done

echo "Iterar utilizando un comando"
for file in $(ls)
do
	echo "Nombre archivo: $file"
done

echo "Iterar en base al formato tradicional"
for ((i=1;i<10;i++))
do
	echo "Número: $i"
done
