#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Debes indicar dos parámetros."
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: El primer parámetro debe ser un archivo ordinario existente."
    exit 1
fi

if [ -e "$2" ]; then
    echo "Error: Ya existe un archivo o directorio con el nombre $2."
    exit 1
fi

cp "$1" "$2"
echo "Archivo copiado con éxito."
