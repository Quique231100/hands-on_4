#!/bin/bash

# Función para listar el contenido de un fichero
listar_contenido() {
    read -p "Ingrese la ruta absoluta al fichero o carpeta: " ruta
    cd ..
    ls "$ruta"
}

# Función para crear un archivo de texto con una línea de texto
crear_archivo() {
    read -p "Ingrese la cadena de texto para almacenar en el archivo: " texto
    echo "$texto" > archivo.txt
    echo "Archivo creado con éxito."
}

# Función para comparar dos archivos de texto
comparar_archivos() {
    cd ..
    read -p "Ingrese la ruta absoluta al primer archivo: " archivo1
    read -p "Ingrese la ruta absoluta al segundo archivo: " archivo2
    diff "$archivo1" "$archivo2"
}

# Función para mostrar el uso del comando awk
uso_awk() {
    echo "Ejemplo de uso de awk:"
    echo "Imprimir la segunda columna de un archivo CSV:"
    awk -F ',' '{print $2}' student-mat-clean.csv
}

# Función para mostrar el uso del comando grep
uso_grep() {
    echo "Ejemplo de uso de grep:"
    echo "Buscar la palabra 'ejemplo' en un archivo:"
    grep "ejemplo" archivo2.txt
}

# Función principal para mostrar el menú
mostrar_menu() {
    echo "---- Menú de Servicios ----"
    echo "1. Listar contenido de un fichero"
    echo "2. Crear archivo de texto con una línea de texto"
    echo "3. Comparar dos archivos de texto"
    echo "4. Mostrar uso de awk"
    echo "5. Mostrar uso de grep"
    echo "6. Salir"

    read -p "Seleccione una opción: " opcion

    case $opcion in
        1) listar_contenido ;;
        2) crear_archivo ;;
        3) comparar_archivos ;;
        4) uso_awk ;;
        5) uso_grep ;;
        6) echo "Saliendo..."; exit ;;
        *) echo "Opción no válida"; mostrar_menu ;;
    esac
}

# Llamar a la función principal para mostrar el menú
mostrar_menu
