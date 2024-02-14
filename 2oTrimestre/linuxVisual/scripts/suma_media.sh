#!/bin/bash

# Haz un script que reciba los siguientes argumentos:
# 1 -> Nombre de directorio base
# 2 -> Nombre de fichero para la suma
# 3 -> Nombre de fichero para la media
# 4 y sucesivos -> Lista de números para operar

# El script debe crear el directorio y los ficheros indicados.
# El script debe calculat la suma y la media de todos los número
# y almacenar el resultado en los ficheros correspondientes

dirname=$1
shift
sumaFichero=$1
shift
mediaFichero=$1
shift

mkdir $dirname

touch $dirname/$sumaFichero.txt
touch $dirname/$mediaFichero.txt

suma=0
media=0

for numero in $@
do
    suma=$[ $suma + $numero ]
done

echo "La suma es $suma" > $dirname/$sumaFichero.txt
echo "La media es $[ $suma/$# ]" > $dirname/$mediaFichero.txt