#!/bin/bash
file=paginas.csv

echo "paginas,Estatus" > $file
for pagina in $(cat paginas)
do
	 salida=$(curl -s -I "$paginas" | sed -n '1p' | tail -1 | awk '{print $3''$4}' | rev | cut -c3- | rev )
         if [ -z '$salida' ]
	then
		echo "$paginas,FAIL" >> $file
	else
		echo "paginas,OK" >> $file
	fi
done
