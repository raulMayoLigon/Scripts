#!/bin/bash

# Cambiar al directorio donde está el repositorio
cd ..

# Actualiza el repositorio con todos los cambios
git add .

# Verificar si hay cambios antes de hacer commit
if [[ -n $(git status -s) ]]; then
  # Hacer commit con mensaje automático que incluya la fecha
  commit_message="Actualización: $(date +'%Y-%m-%d %H:%M:%S')"
  git commit -m "$commit_message"

  # Subir los cambios al repositorio en GitHub
  git push origin main
  echo "Scripts actualizados y subidos a GitHub."

else
  echo "No hay cambios para subir."
fi