#!/bin/bash

numero_a_adivinar=42  

echo "Adivina el número entre 1 y 100 (o introduce 0 para rendirte):"

while true; do
    read -p "Introduce tu número: " intento

    if [ $intento -eq 0 ]; then
        echo "Te has rendido. El número era $numero_a_adivinar."
        exit 0
    elif [ $intento -lt $numero_a_adivinar ]; then
        echo "El número es mayor."
    elif [ $intento -gt $numero_a_adivinar ]; then
        echo "El número es menor."
    else
        echo "¡Enhorabuena! Has adivinado el número."
        exit 0
    fi
done
