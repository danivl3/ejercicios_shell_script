#!/bin/bash

#Este script copia el fichero indicado como primer parámetro posicional de manera que la
#copia tenga el nombre indicado en el segundo parámetro posicional. Hay que controlar:
#a) Que se indiquen dos parámetros.
#b) Que exista y sea archivo ordinario el primer parámetro.
#c) Que no exista un identificador (fichero ordinario, directorio, etc..) con el mismo
#nombre que el indicado en el segundo parámetro.
#Si se produce alguna de las situaciones anteriores se visualizará un mensaje de error
#indicativo.

if [[ $# -eq 2 ]]
then
  if [[ -f $1 ]]
  then
    if [[ -e $2 ]]
    then
      echo "Ya existe un identificador con el mismo nombre que el indicado en el parámetro 2"
    else
      cp $1 $2
    fi
  else
    echo "El primer parámetro no existe o no es un archivo ordinario"
  fi
else
  echo "El número de prámetros indicados es incorrecto"
fi
