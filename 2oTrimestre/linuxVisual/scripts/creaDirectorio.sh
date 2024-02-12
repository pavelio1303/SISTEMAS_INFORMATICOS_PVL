if [ $# -eq 3 ] && [ $2 -ge 1 ] && [ $2 -le 100 ]
then
    dirname=$1
    dicherosDirectorios=$2
    basefilename=$3

    # Si $dirname no existe, lo creamos (usamos el flag -d 
    # para comprobar que sea un directorio)
    if ! test -d $dirname
    then
        mkdir $dirname
    fi

    for ((i=1 ; i<=$num_files ; i++))
    do
        touch $dirname/$dirname$i
    done

fi