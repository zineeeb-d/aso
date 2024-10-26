#!/bin/bash

archivo="lista.txt"

while true; do
    echo "AGENDA"
    echo "1. Añadir"
    echo "2. Buscar"
    echo "3. Listar"
    echo "4. Ordenar"
    echo "5. Borrar"
    echo "6. Salir"
    read -p "Selecciona una opción: " opcion

    case $opcion in
        1)
            read -p "Nombre: " nombre
            read -p "Dirección: " direccion
            read -p "Teléfono: " telefono
            echo "$nombre, $direccion, $telefono" >> $archivo
            ;;
        2)
            read -p "Introduce el término de búsqueda: " termino
            grep "$termino" $archivo
            ;;
        3)
            cat $archivo
            ;;
        4)
            sort $archivo -o $archivo
            ;;
        5)
            rm -f $archivo
            ;;
        6)
            break
            ;;
        *)
            echo "Opción no válida"
            ;;
    esac
done
