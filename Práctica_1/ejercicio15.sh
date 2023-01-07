#!/bin/bash

#Este script recibe como único parámetro el nombre de un directorio, especificado
#mediante su nombre de ruta completo. El programa debe mostrar un listado no
#recursivo de todas las entradas contenidas en ese directorio, indicando para cada
#una de ellas si se trata de un fichero, de un directorio, de un enlace simbólico,
#un archivo especial de bloque o de un archivo especial de caracter. Debes pasarle el
#directorio /dev y verificar que funciona bien. Al final, debe
#mostrarse un mensaje indicando el número total de entradas procesadas.

for entry in $1/*
do
  if [[ -f $entry ]]
  then
    echo "$entry: Fichero"
  elif [[ -d $entry ]]
  then
    echo "$entry: Directorio"
  elif [[ -h $entry ]]
  then
    echo "$entry: Enlace simbólico"
  elif [[ -b $entry ]]
  then
    echo "$entry: Archivo especial de bloque"
  else
    echo "$entry: Archivo especial de caracter"
  fi
done

echo "El número total de entradas procesadas es: $(ls "$1" | wc -l)"
