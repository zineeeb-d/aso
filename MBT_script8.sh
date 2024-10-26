#!/bin/bash

echo "Introduce el primer número:"
read num1
echo "Introduce el segundo número:"
read num2

if [ "$num1" -gt "$num2" ]; then
    echo "El número $num1 es mayor."
elif [ "$num1" -lt "$num2" ]; then
    echo "El número $num2 es mayor."
else
    echo "Ambos números son iguales."
fi

