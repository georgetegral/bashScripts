# !/bin/bash
# Programa para ejemplificar como se lee en un archivo
# Autor: georgetegral

echo "Leer en un archivo"
cat $1
echo -e "\nAlmacenar los valores en una variable"
valorCat=`cat $1`
echo "$valorCat"

# Se utiliza la variable IFS (Internal File Separator) para evitar que los espacios en blanco se recorten al inicio o al final
echo -e "\nLeer archivos línea por línea con while"
while IFS= read linea
do
	echo "$linea"
done < $1

