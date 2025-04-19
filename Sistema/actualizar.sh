#!/bin/bash

clear
echo "🔄 Comprobador de actualizaciones para tu Mac"
echo "----------------------------------------------"
echo "¿Qué deseas hacer?"
echo "1. Ver y aplicar actualizaciones de macOS"
echo "2. Ver y aplicar actualizaciones de la App Store (mas)"
echo "3. Ver y aplicar actualizaciones de Homebrew"
echo "4. Hacer TODO"
echo "0. Salir"
echo "----------------------------------------------"
read -p "Elige una opción [0-4]: " opcion

case "$opcion" in
  1)
    echo "🔍 Buscando actualizaciones de macOS..."
    softwareupdate -l
    read -p "¿Quieres instalar las actualizaciones del sistema ahora? (s/n): " sys
    if [[ "$sys" =~ ^[sS]$ ]]; then
      sudo softwareupdate -ia --verbose
    else
      echo "❌ Actualización del sistema cancelada."
    fi
    ;;
  2)
    echo "🔍 Buscando actualizaciones de apps (mas)..."
    mas outdated
    read -p "¿Quieres actualizar las apps ahora? (s/n): " masopt
    if [[ "$masopt" =~ ^[sS]$ ]]; then
      mas upgrade
    else
      echo "❌ Actualización de apps cancelada."
    fi
    ;;
  3)
    echo "🔍 Buscando actualizaciones con Homebrew..."
    brew update
    brew outdated
    read -p "¿Quieres actualizar fórmulas y casks ahora? (s/n): " brewopt
    if [[ "$brewopt" =~ ^[sS]$ ]]; then
      brew upgrade
      brew cleanup
    else
      echo "❌ Actualización con Homebrew cancelada."
    fi
    ;;
  4)
    echo "🔁 Actualizando TODO..."
    echo "👉 Actualizando macOS..."
    softwareupdate -l
    sudo softwareupdate -ia --verbose

    echo "👉 Actualizando App Store (mas)..."
    mas outdated
    mas upgrade

    echo "👉 Actualizando Homebrew..."
    brew update
    brew upgrade
    brew cleanup
    echo "✅ Todo actualizado."
    ;;
  0)
    echo "👋 Hasta luego."
    exit 0
    ;;
  *)
    echo "❌ Opción no válida. Ejecuta el script de nuevo."
    ;;
esac