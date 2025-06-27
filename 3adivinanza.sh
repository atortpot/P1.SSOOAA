#!/bin/bash
arch="animales.txt"
if [ ! -r "$arch" ]; then
  echo "No se puede leer $arch"
  exit 1
fi

# Leemos los animales en un array
mapfile -t animales < "$arch"
intentos=3

while (( intentos > 0 )); do
  read -p "Adivina un animal (${intentos} intento(s) restante(s)): " guess
  for a in "${animales[@]}"; do
    if [[ "${guess,,}" == "${a,,}" ]]; then
      echo "¡Correcto! Era $a."
      exit 0
    fi
  done
  ((intentos--))
  echo "No es correcto."
done

echo "Lo siento, no lo adivinaste. Las opciones eran: ${animales[*]}"
exit 1

