#!/bin/bash

# Ruta al archivo CSV
archivo_csv="Accidentes_ags_2021.csv"

# Verifica si el archivo existe
if [ ! -f "$archivo_csv" ]; then
    echo "El archivo $ruta_archivo no existe."
    exit 1
fi

# Extraer datos "TRACTOR" y suma

suma_tractor=$(awk -F',' '{sum += $21} END {print sum}' "$archivo_csv") #solo era necesario este comando