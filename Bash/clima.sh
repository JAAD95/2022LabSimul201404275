#! /bin/bash 
#Mostramos las primeras 7 lineas del archivo
v=$(head -n7 /home/jaad/ejercicio_docker/tiempo)
#Eliminamos el archivo tiempo
b=$(rm /home/jaad/ejercicio_docker/tiempo)
echo $v
echo $b