# !/bin/bash
# Programa para ejemplificar el uso de break y continue
# Autor: georgetegral

echo "Sentencias break y continue"
for fil in $(ls)
do
	for i in 1 2 3 4
	do
		if [ $fil = "10_download.sh" ]; then
			break;
		else
			echo "Nombre del archivo: $fil _ $i"
		fi
	done
done
