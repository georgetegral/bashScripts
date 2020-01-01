# !/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar y gzip
# Autor: georgetegral

echo "Empaquetar todos los scripts de la carpeta"
tar -cvf shellCourse.tar *.sh

#Cuando se empaqueta con gzip, el empaquetamiento anterior se elimina
gzip shellCourse.tar

echo "Empaquetar un solo archivo, con un ratio 9"
gzip -9 9_options.sh
