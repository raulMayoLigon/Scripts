#!/bin/bash

# Pide el nombre del nuevo proyecto
read -p "Nombre del nuevo proyecto: " proyecto

# Pide la ubicación donde crear el proyecto (o usa el directorio actual por defecto)
read -p "¿Dónde quieres crear el proyecto? (Presiona Enter para usar la ubicación actual): " ubicacion

# Si no se especifica una ubicación, usar la ubicación actual
if [ -z "$ubicacion" ]; then
  ubicacion="."
fi

# Crea el directorio del proyecto en la ubicación especificada
mkdir "$ubicacion/$proyecto"
cd "$ubicacion/$proyecto"

# Crea archivos básicos
echo '#include <stdio.h>\n\nint main() {\n    printf("Hola, Mundo!\\n");\n    return 0;\n}' > main.c
echo 'all:\n\tgcc main.c -o main\n' > Makefile

# Abre el proyecto en Xcode o tu editor preferido
open -a Xcode main.c

echo "Nuevo proyecto '$proyecto' creado en '$ubicacion/$proyecto' y abierto en Xcode."