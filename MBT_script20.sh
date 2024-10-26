#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 número"
    exit 1
fi

numero=$1

if [ $numero -le 1 ]; then
    echo "$numero no es un número primo."
    exit 0
fi

for ((i=2; i*i<=numero; i++)); do
    if [ $((numero % i)) -eq 0 ]; then
        echo "$numero no es un número primo."
        exit 0
    fi
done

echo "$numero es un número primo."
