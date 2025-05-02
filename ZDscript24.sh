#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 directorio"
    exit 1
fi

directorio=$1

if [ ! -d "$directorio" ]; then
    echo "$directorio no es un directorio válido."
    exit 1
fi

contador_ficheros=0
contador_directorios=0

for entrada in "$directorio"/*; do
    if [ -f "$entrada" ]; then
        contador_ficheros=$((contador_ficheros + 1))
    elif [ -d "$entrada" ]; then
        contador_directorios=$((contador_directorios + 1))
    fi
done

echo "Total de ficheros: $contador_ficheros"
echo "Total de subdirectorios: $contador_directorios"
