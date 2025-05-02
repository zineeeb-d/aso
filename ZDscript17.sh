#!/bin/bash

suma=0

while true; do
    echo -n "Introduce un número (0 para salir): "
    read numero

    if [ "$numero" -eq 0 ]; then
        echo "Suma total: $suma"
        break
    fi

    suma=$((suma + numero))
done
