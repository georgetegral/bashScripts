# !/bin/bash
# Programa para ejemplificar el uso de arreglos 
# Autor: georgetegral

arregloNumeros=(1 2 3 4 5 6)
arregloCadenas=(Jorge, Jessica, Mario, Carlos)
arregloRangos=({A..Z} {10..20})

#Imprimir todos los valores
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Arreglo de Cadenas: ${arregloCadenas[*]}"
echo "Arreglo de Rangos: ${arregloRangos[*]}"

#Imprimir los tamaños de los arreglos
echo "Tamaño Arreglo de Números: ${#arregloNumeros[*]}"
echo "Tamaño Arreglo de Cadenas: ${#arregloCadenas[*]}"
echo "Tamaño Arreglo de Rangos: ${#arregloRangos[*]}"

#Imprimir las posición 3 del arreglo de números, cadenas y rango
echo "Posición 3 del Arreglo de Números: ${arregloNumeros[3]}"
echo "Posición 3 del Arreglo de Cadenas: ${arregloCadenas[3]}"
echo "Posición 3 del Arreglo de Rangos: ${arregloRangos[3]}"

#Añadir y eliminar valores en un arreglo
arregloNumeros[7]=20
unset arregloNumeros[0]
echo "Arreglo de Números: ${arregloNumeros[*]}"
echo "Tamaño de arreglo de números: ${#arregloNumeros[*]}"
