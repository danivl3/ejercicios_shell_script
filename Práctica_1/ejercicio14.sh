#!/bin/bash

#Este script recibe como único parámetro el nombre de un directorio, especificado
#mediante su nombre de ruta completo. El programa debe mostrar un listado no
#recursivo de todas las entradas contenidas en ese directorio, indicando para
#cada una de ellas si se trata de un fichero o de un directorio. Al final, debe
#mostrarse un mensaje indicando el número total de entradas procesadas.

for entry in $1/*
do
  if [[ -f $entry ]]
  then
    echo "$entry: Fichero"
  else
    echo "$entry: Directorio"
  fi
done

echo "El número total de entradas procesadas es: $(ls "$1" | wc -l)"
