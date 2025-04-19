#!/bin/bash

echo "Aplicaciones activas:"
osascript -e 'tell application "System Events" to get name of (processes where background only is false)'

echo
echo "¿Qué deseas hacer?"
echo "1) Suspender (reposo)"
echo "2) Apagar"
echo "3) Cancelar"

read -p "Introduce una opción (1-3): " opcion

case $opcion in
  1)
    echo "Poniendo el sistema en reposo..."
    pmset sleepnow
    ;;
  2)
    echo "Apagando el sistema..."
    sudo shutdown -h now
    ;;
  3)
    echo "Operación cancelada."
    ;;
  *)
    echo "Opción no válida."
    ;;
esac