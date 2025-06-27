#!/bin/bash
shopt -s nullglob
for file in *.txt; do
  # Obtenemos propietario y fecha de última modificación
  owner=$(stat -c "%U" "$file")
  mod=$(stat -c "%y" "$file")
  # Insertamos al principio
  sed -i "1i Propietario: $owner    Última modificación: $mod" "$file"
done
echo "Actualizados todos los .txt del directorio."

