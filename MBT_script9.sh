#!/bin/bash

echo "Selecciona una operación:"
echo "1. Sumar"
echo "2. Restar"
echo "3. Multiplicar"
echo "4. Dividir"
read -p "Introduce tu opción (1-4): " opcion

echo "Introduce el primer número:"
read num1
echo "Introduce el segundo número:"
read num2

case $opcion in
    1) echo "Resultado: $((num1 + num2))" ;;
    2) echo "Resultado: $((num1 - num2))" ;;
    3) echo "Resultado: $((num1 * num2))" ;;
    4) 
        if [ "$num2" -ne 0 ]; then
            echo "Resultado: $((num1 / num2))"
        else
            echo "Error: No se puede dividir por cero."
        fi
        ;;
    *) echo "Opción no válida." ;;
esac
