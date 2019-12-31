# !/bin/bash
# Programa para ejemplificar el uso de los loops anidados 
# Autor: georgetegral

echo "Loops Anidados"
for fil in $(ls)
do
	for i in 1 2 3 4
	do
		echo "Nombre del archivo: $fil _ $i"
	done
done
