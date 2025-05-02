#!/bin/bash

echo "Elige una opción para calcular la suma del 1 al 1000:"
echo "1. Usar for"
echo "2. Usar while"
echo "3. Usar until"
read -p "Opción: " opcion

suma=0

case $opcion in
    1)
        # Usando for
        for ((i=1; i<=1000; i++)); do
            suma=$((suma + i))
        done
        echo "Suma usando for: $suma"
        ;;
    2)
        # Usando while
        suma=0
        i=1
        while [ $i -le 1000 ]; do
            suma=$((suma + i))
            i=$((i + 1))
        done
        echo "Suma usando while: $suma"
        ;;
    3)
        # Usando until
        suma=0
        i=1
        until [ $i -gt 1000 ]; do
            suma=$((suma + i))
            i=$((i + 1))
        done
        echo "Suma usando until: $suma"
        ;;
    *)
        echo "Opción inválida"
        ;;
esac
