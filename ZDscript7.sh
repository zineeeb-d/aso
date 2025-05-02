#!/bin/bash
if [ -z "$1" ]; then
  echo "Debes proporcionar un directorio como argumento."
  exit 1

fi
fecha=$(date +"%Y-%m-%d")
nombre_directorio=$(basename "$1")
archivo_comprimido="${fecha}_${nombre_directorio}.tar.gz"
tar -czf "$archivo_comprimido" "$1"
echo "Archivo comprimido creado: $archivo_comprimido"
