#!/bin/bash
if [ $# -ne 2 ]; then
  echo "Uso: $0 palabra archivo"
  exit 1
fi

pal=$1; file=$2

if [ ! -r "$file" ]; then
  echo "El archivo indicado no existe o no tiene permiso de lectura"
  exit 1
fi

# Contamos apariciones (palabra completa, case-insensitive)
count=$(grep -oiw "$pal" "$file" | wc -l)
echo "La palabra '$pal' aparece $count vez/veces en $file."

