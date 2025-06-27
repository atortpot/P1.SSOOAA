#!/bin/bash
dirA=$1; dirB=$2
if [ $# -ne 2 ] || [ ! -d "$dirA" ] || [ ! -d "$dirB" ]; then
  echo "Uso: $0 dirA dirB"
  exit 1
fi

sync_dir() {
  src=$1; dst=$2
  # Copia ficheros/directorios presentes en src y no en dst
  for item in "$src"/*; do
    base=$(basename "$item")
    if [ ! -e "$dst/$base" ]; then
      cp -r "$item" "$dst/"
    elif [ -d "$item" ]; then
      # Si es directorio, recursar
      sync_dir "$item" "$dst/$base"
    fi
  done
}

sync_dir "$dirA" "$dirB"
sync_dir "$dirB" "$dirA"
echo "Sincronización completa entre '$dirA' y '$dirB'."

