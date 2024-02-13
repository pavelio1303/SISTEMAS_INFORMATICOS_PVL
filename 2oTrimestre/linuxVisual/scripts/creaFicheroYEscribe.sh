#!/bin/bash

# Haz un script que reciba como primer argumento el nombre de
# un fichero y escriba el resto de argumentos en el fichero.
# La primera línea del fichero debe ser el número de filas escritas.

fichero=$1
numeroArgumentos=$#
contador=0

echo "$numeroArgumentos lineas escritas" > $fichero

for argumento in $@
do
    if [ $contador -eq 0 ]
    then
        contador=$[contador + 1]
    else
        echo "${argumento}" >> $fichero
    fi
done


    