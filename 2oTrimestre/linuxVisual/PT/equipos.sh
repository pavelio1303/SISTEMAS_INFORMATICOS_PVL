#!/bin/bash

# Pablo Jiménez Sánchez

equipo=$1
shift
deporte=$1
shift

if [ $deporte == "futbol" ] || [ $deporte == "baloncesto" ] || [ $deporte == "voleibol" ]
then
    echo "El deporte escrito es correcto."
    if [ $deporte == "futbol" ] && [ $# -eq 11 ]
    then
        contador=1
        touch $equipo
        echo "Equipo $equipo registrado correctamente para el torneo de fútbol."
        echo "El equipo $equipo inscrito a $deporte, se compone de $# jugadores:" >> $equipo
        for jugador in $@
        do
            echo "Jugador $contador: $jugador" >> $equipo
            contador=$[ contador + 1 ]
        done
    elif [ $deporte == "baloncesto" ] && [ $# -eq 5 ]
    then
        contador=1
        touch $equipo
        echo "Equipo $equipo registrado correctamente para el torneo de baloncesto."
        echo "El equipo $equipo inscrito a $deporte, se compone de $# jugadores:" >> $equipo
        for jugador in $@
        do
            echo "Jugador $contador: $jugador" >> $equipo
            contador=$[ contador + 1 ]
        done
    elif [ $deporte == "voleibol" ] && [ $# -eq 6 ]
    then
        contador=1
        touch $equipo
        echo "Equipo $equipo registrado correctamente para el torneo de voleibol."
        echo "El equipo $equipo inscrito a $deporte, se compone de $# jugadores:" >> $equipo
        for jugador in $@
        do
            echo "Jugador $contador: $jugador" >> $equipo
            contador=$[ contador + 1 ]
        done
    else
        echo "Cantidad de jugadores incorrectos."
    fi
else
    echo "El deporte escrito no es correcto."
fi