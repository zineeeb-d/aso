#!/bin/bash


if [ $# -lt 4 ]; then
    echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
    exit 1
fi

# Variables de entrada
opcion=$1
nombre=$2
apellido1=$3
apellido2=$4
grupo=$5

# Crear identificador del usuario en el formato aluXXYYZ (adaptado a Zineb Daimi)
identificador="alu${apellido1:0:2}${apellido2:0:2}${nombre:0:1}"

# Convertir identificador a minúsculas (por si hay mayúsculas en los apellidos)
identificador=$(echo "$identificador" | tr '[:upper:]' '[:lower:]')

case $opcion in
    alta)
        # Si no se especifica un grupo, creamos uno con el nombre del identificador
        if [ -z "$grupo" ]; then
            grupo=$identificador
            # Crear el grupo si no existe
            if ! getent group "$grupo" > /dev/null; then
                groupadd "$grupo"
            fi
        fi
        # Crear el usuario con el identificador y asignarlo al grupo
        if id "$identificador" &>/dev/null; then
            echo "Error: El usuario $identificador ya existe."
        else
            useradd -m -g "$grupo" -c "$nombre $apellido1 $apellido2" "$identificador"
            echo "Usuario $identificador creado y asignado al grupo $grupo."
        fi
        ;;
    baja)
        # Dar de baja al usuario si existe
        if id "$identificador" &>/dev/null; then
            userdel -r "$identificador"
            echo "Usuario $identificador eliminado."
        else
            echo "Error: El usuario $identificador no existe."
        fi
        ;;
    *)
        echo "Error. La sintaxis correcta es ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
        ;;
esac

