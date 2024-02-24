#! /bin/bash

fecha= `date+%H:%M`  #Fecha
mkdir -p prueba # crear carpeta
touch prueba/texto.txt #Crear archivo
echo "lahora y fecha exacta son " >> prueba/texto.txt
cat prueba/texto.txt
pwd
