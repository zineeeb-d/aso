#!/bin/bash

# Comprobar que se ha pasado un parámetro
if [ -z "$1" ]; then
    echo "Error: Debes proporcionar un número como parámetro."
    exit 1
fi

n=$1

# Generar la tabla de multiplicar para el número dado
for i in {1..10}; do
    resultado=$((i * n))
    echo "$i x $n = $resultado"
done
