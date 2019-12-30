# !/bin/bash
# Programa para revisar los tipos de operadores
# Autor: georgetegral

numA=10
numB=4

echo "\nOperadores Aritmeticos"
echo "\nNumero A = $numA"
echo "Numero B = $numB\n"
echo "Sumar A + B = " $((numA + numB)) 
echo "Restar A - B = " $((numA - numB)) 
echo "Multiplicar A * B = " $((numA * numB)) 
echo "Dividir A / B = " $((numA / numB)) 
echo "Residuo A % B = " $((numA % numB))


echo "\nOperadores Relacionales"
echo "\nNumero A = $numA"
echo "Numero B = $numB\n"
echo "A < B = " $((numA < numB)) 
echo "A > B = " $((numA > numB)) 
echo "A <= B = " $((numA <= numB)) 
echo "A >= B = " $((numA >= numB)) 
echo "A == B = " $((numA == numB)) 
echo "A != B = " $((numA != numB))


echo "\nOperadores de Asignacion"
echo "\nNumero A = $numA"
echo "Numero B = $numB\n"
echo "Sumar A += B = " $((numA += numB)) 
echo "Restar A -= B = " $((numA -= numB)) 
echo "Multiplicar A *= B = " $((numA *= numB)) 
echo "Dividir A /= B = " $((numA /= numB)) 
echo "Residuo A %= B = " $((numA %= numB)) 
