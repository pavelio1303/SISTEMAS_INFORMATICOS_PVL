#!/bin/bash

# Comprobamos que los argumentos son 3 y que el siguiente
# argumento se encuentra entre 1 y 99

# -gt = greater than(>) // -lt = lower than(<) 
# -eq = equals(==) // -ge = greater and equals(>=) // -le = lower and equals(<=)

if [ $# -eq 3 ] && [ $2 -ge 1 ] && [ $2 -le 99 ]
then
    dirname=$1  # [!] En la declaración de variables en linux no puede haber espacios
    num_files=$2
    basefilename=$3

    if ! test -d $dirname # [!] Comprueba si el directorio NO existe
    then
        echo "El directorio no existe! Te lo creo:"
        mkdir $dirname
        ls -l
    fi

    for ((i=1 ; i<=$num_files ; i++))
    do
        touch $dirname/$basefilename$i 
    done
fi