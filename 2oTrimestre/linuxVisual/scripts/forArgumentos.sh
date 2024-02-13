#!/bin/bash

# echo "Hay $# argumentos:"

# for argumento in $@
# do
#     echo $argumento
# done

#   HAZ UN SCRIPT QUE SUME CARTAS DE BLACKJACK
#   1 -> 11
#   2 -> 2
#   3 -> 3
#   4 -> 4
#   5 -> 5
#   6 -> 6
#   7 -> 7
#   8 -> 8
#   9 -> 9
#   10 -> 10
#   11 -> 10
#   12 -> 10
#   13 -> 10
#   VALORES FUERA DE RANGO NO SE TIENEN EN CUENTA

echo "Hay $# cartas."

sumaTotal=0 

for carta in $@
do 
    if [ $carta -eq 11 ] || [ $carta -eq 12 ] || [ $carta -eq 13 ]
    then
        sumaTotal=$[ sumaTotal + 10 ]
    elif [ $carta -eq 1 ]
    then
        sumaTotal=$[ sumaTotal + 11 ]
    elif [ $carta -ge 2 ] && [ $carta -le 10 ]
    then
        sumaTotal=$[ sumaTotal + carta ]
    fi
done

if [ $sumaTotal -le 21 ]
then
    echo "La suma es $sumaTotal. Has ganado."
else
    echo "La suma es $sumaTotal. Has perdido."
fi