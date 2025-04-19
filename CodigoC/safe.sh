#!/bin/sh

cd ..
cd ..

# Preguntar al usuario qué repositorio quiere guardar
echo "Selecciona el repositorio que quieres guardar:"
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

# Mensaje de commit opcional
read -p "Escribe un mensaje de commit (o pulsa Enter para usar el mensaje por defecto): " commit_message
commit_message=${commit_message:-"Actualización automática"}

# Ejecutar Git
git add -A
git commit -m "$commit_message"
git push origin main

echo "✅ Cambios guardados y subidos a GitHub en $repo_path."