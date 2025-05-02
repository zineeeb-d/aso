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

contador=0

for entrada in "$directorio"/*; do
    if [ -f "$entrada" ]; then
        tipo="Fichero"
    elif [ -d "$entrada" ]; then
        tipo="Directorio"
    elif [ -L "$entrada" ]; then
        tipo="Enlace simbólico"
    elif [ -b "$entrada" ]; then
        tipo="Archivo especial de bloque"
    elif [ -c "$entrada" ]; then
        tipo="Archivo especial de carácter"
    else
        tipo="Otro tipo"
    fi
    echo "$(basename "$entrada") - $tipo"
    contador=$((contador + 1))
done

echo "Total de entradas procesadas: $contador"
