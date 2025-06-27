#!/bin/bash
if [ $# -eq 0 ]; then
  echo "Uso: $0 archivo1 [archivo2 ...]"
  exit 1
fi

echo "Archivos con extensión .java:"
for f in "$@"; do
  if [[ "$f" == *.java ]]; then
    echo "  $f"
  fi
done

