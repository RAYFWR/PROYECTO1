#!/bin/bash
file=Accidentes_ags_2021.csv

echo "Pagina,Estatus" > $file
for pagina in $(cat paginas)
do

        salida=$(curl -s -I "$pagina" | sed -n '1p' | tail -1 | awk '{print $3 " " $4}' | rev | cut -c3- | rev) #no tenias que hacer un curl todo era con un grep 
        if [ -z "$salida" ]
        then
                echo "$pagina,FAIL" >> $file
        else
                echo "$pagina,OK" >> $file
        fi

done