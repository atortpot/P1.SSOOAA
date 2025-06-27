#!/bin/bash
dir=$1
if [ -z "$dir" ] || [ ! -d "$dir" ]; then
  echo "Uso: $0 directorio"
  exit 1
fi

# Buscamos ficheros ejecutables (-type f y permiso de ejecución)
num=$(find "$dir" -maxdepth 1 -type f -executable | wc -l)
echo "Número de archivos ejecutables en '$dir': $num"

