#!/bin/bash

if [ $# -eq 4 ] && ( [ $2 == "-o" ] || [ $2 == "-v" ] ) && ( [ $3 == "-f" ] || [ $3 == "-d" ] ) && [ $4 -ge 1 ] && [ $4 -le 100 ]
then
    nombreDirectorioOriginal=$1
    nombreDirectorio=$1
    numeroFicheros=$4

    if [ $2 == "-o" ]
    then
        if test -d $nombreDirectorio
        then
            mv $nombreDirectorio .$nombreDirectorio
        elif ! test -d .$nombreDirectorio
        then
            mkdir .$nombreDirectorio
        fi
        nombreDirectorio=.$nombreDirectorio
    else
        if test -d .$nombreDirectorio
        then
            mv .$nombreDirectorio $nombreDirectorio
        elif ! test -d $nombreDirectorio
        then
            mkdir $nombreDirectorio
        fi
    fi

    if [ $3 == "-d" ]
    then
        for ((i=1 ; i<=$numeroFicheros ; i++))
        do
            mkdir $nombreDirectorio/${nombreDirectorioOriginal}_dir.$i
        done
    else
        for ((i=1 ; i<=$numeroFicheros ; i++))
        do
            touch $nombreDirectorio/${nombreDirectorioOriginal}_file.$i
        done
    fi

    else
        echo "Argumentos inválidos"
fi