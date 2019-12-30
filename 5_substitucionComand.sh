# !/bin/bash
# Programa para revisar como ejecutar comandos dentro de un programa y almacenar en una variable para su posterior utilización 
# Autor: georgetegral

ubicacionActual=`pwd`
infoKernel=$(uname -a)

echo "La ubicación actual es $ubicacionActual"
echo "Información del Kernel: $infoKernel"
