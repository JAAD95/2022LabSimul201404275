#! /bin/bash
: << 'Header'
Autor:        Julio Alvarado
Fecha:        06/03/2022
Tipo archivo: Script de bash
Ejecución:    ./ejecutable.sh
Resumen:      Creación de un archivo .c
Header
#Definición de variables
nombre=""
autor=$(whoami)
fecha=$(date)
compilacion=$(gcc --version)

#Inicio del programa
echo "Ingrese nombre del nuevo archivo"
read nombre
#Se inicia condicion según se ingrese o no un nombre
if [ -z "$nombre" ]; then
echo "Intente de nuevo"
elif [ -n "$nombre" ]; then
#Se crea el archivo .c
touch ~/ejercicio_docker/"$nombre".c
#Se agrega el header
echo "/*" >> ~/ejercicio_docker/"$nombre".c 
echo "Autor: $autor" >> ~/ejercicio_docker/"$nombre".c
echo "Compilador: $compilacion" >> ~/ejercicio_docker/"$nombre".c 
echo "Compilación: gcc "$nombre".c -o "$nombre"" >> ~/ejercicio_docker/"$nombre".c 
echo "Fecha: $fecha" >> ~/ejercicio_docker/"$nombre".c 
echo "Librerias: Stdio" >> ~/ejercicio_docker/"$nombre".c
echo "Resumen:" >> ~/ejercicio_docker/"$nombre".c 
echo "Entradas:" >> ~/ejercicio_docker/"$nombre".c 
echo "Salidas:" >> ~/ejercicio_docker/"$nombre".c 
echo "*/" >> ~/ejercicio_docker/"$nombre".c 
#Se configura la libreria necesaria para el archivo
echo "//Librerías" >> ~/ejercicio_docker/"$nombre".c 
echo "#include <stdio.h>" >> ~/ejercicio_docker/"$nombre".c 
echo "//Numerar los pasos del pseudocódigo" >> ~/ejercicio_docker/"$nombre".c 
echo "Archivo creado"
fi
#fin del programa
