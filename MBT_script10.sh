#!/bin/bash

read -p "Introduce un número: " num

if [ $((num % 2)) -eq 0 ]; then
    echo "$num es par."
else
    echo "$num es impar."
fi
