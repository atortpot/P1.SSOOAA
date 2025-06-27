#!/bin/bash
read -p "Introduce la base (entero): " base
read -p "Introduce el exponente (entero no negativo): " exp

# Comprobamos que exp es un entero no negativo
if ! [[ "$exp" =~ ^[0-9]+$ ]]; then
  echo "El exponente debe ser un entero no negativo."
  exit 1
fi

# Calculamos potencia
result=1
for (( i=0; i<exp; i++ )); do
  result=$(( result * base ))
done

echo "$base elevado a $exp es: $result"

