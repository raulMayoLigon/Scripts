#!/bin/sh

cd ..
cd ..

# Preguntar al usuario qué repositorio quiere actualizar
echo "Selecciona el repositorio del que quieres hacer pull:"
echo "0) Memoria Dinámica"
echo "1) Listas Simples"
echo "2) Listas Dobles"
echo "3) Listas de Listas"
echo "4) Ficheros Binarios"
read -p "Introduce el número correspondiente: " opcion

# Definir la ruta del repositorio según la opción elegida
case $opcion in
    0)
        repo_path="$HOME/Desktop/clase/proyectos/lenguajes/Tema0MemoriaDinámica/MemoriaDinámica"
        ;;
    1)
        repo_path="$HOME/Desktop/clase/proyectos/lenguajes/Tema1ListasSimples/listasSimples" 
        ;;
    2)
        repo_path="$HOME/Desktop/clase/proyectos/lenguajes/Tema2ListasDobles/ListasDobles" 
        ;;
    3)
        repo_path="$HOME/Desktop/clase/proyectos/lenguajes/Tema3ListasdeListas/ListasdeListas" 
        ;;
    4)
        repo_path="$HOME/Desktop/clase/proyectos/lenguajes/Tema4FicherosBinarios/FicherosBinarios" 
        ;;
    *)
        echo "❌ Opción no válida. Saliendo..."
        exit 1
        ;;
esac

# Moverse al repositorio seleccionado
cd "$repo_path" || { echo "❌ No se pudo acceder al repositorio"; exit 1; }

# Ejecutar Git Pull
git pull origin main

echo "✅ Repositorio actualizado con los cambios de GitHub en $repo_path."