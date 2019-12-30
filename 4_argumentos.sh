# !/bin/bash
# Programa para ejemplificar el paso de argumentos
# Autor: georgetegral

nombreCurso=$1
horarioCurso=$2

echo "El nombre del curso es: $nombreCurso dictado en el horario de $horarioCurso"
echo "El numero de parámetros es: $#"
echo "Los parámetros enviados son: $*"
