#!/bin/bash

cd ..
cd ..

# Nombre del proyecto
PROJECT_NAME="$1"

# Comprobamos que se ha pasado un nombre
if [ -z "$PROJECT_NAME" ]; then
  echo "Uso: ./crear_proyecto.sh NombreDelProyecto"
  exit 1
fi

# Crear carpeta del proyecto
mkdir "$PROJECT_NAME"
cd "$PROJECT_NAME"

# Crear proyecto con xcodebuild
xcodebuild -project "$PROJECT_NAME.xcodeproj"

# Crear estructura básica
mkdir -p "$PROJECT_NAME"/Sources
mkdir -p "$PROJECT_NAME"/Resources

# Crear archivo main.swift básico
cat <<EOF > "$PROJECT_NAME/Sources/main.swift"
import Foundation

print("Hola desde $PROJECT_NAME")
EOF

echo "Proyecto $PROJECT_NAME creado con éxito."