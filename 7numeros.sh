#!/bin/bash
nums=()
echo "Introduce 10 números enteros:"
for ((i=1; i<=10; i++)); do
  read -p "Número $i: " n
  # Validación básica
  if ! [[ "$n" =~ ^-?[0-9]+$ ]]; then
    echo "Debe ser un entero."
    ((i--))
    continue
  fi
  nums+=("$n")
done

sum=0
max=${nums[0]}
min=${nums[0]}
for n in "${nums[@]}"; do
  (( sum += n ))
  (( n > max )) && max=$n
  (( n < min )) && min=$n
done

media=$(echo "scale=2; $sum/10" | bc)
echo "Suma: $sum"
echo "Media: $media"
echo "Máximo: $max"
echo "Mínimo: $min"

