#!/bin/bash
# Comprueba que se han pasado 10 argumentos
if [ $# -ne 10 ]; then
  echo "Uso: $0 letra1 letra2 ... letra10"
  exit 1
fi

count=0
for l in "$@"; do
  # Convertimos a minúscula y comprobamos si es vocal
  case "${l,,}" in
    a|e|i|o|u) ((count++));;
  esac
done

echo "Hay $count vocal(es) de las 10 letras dadas."



