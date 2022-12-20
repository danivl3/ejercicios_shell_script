#!/bin/bash

#Este script indica si el fichero pasado por parámetro existe o no. Además indica si se trata de un fichero regular o de un directorio

if [[ -d $1 ]]
then
  echo "El parámetro pasado es un directorio"
elif [[ -e $1 ]]
then
  echo "El parámetro pasado es un fichero"
else
  echo "El fichero o directorio no existe o se ha introducido un nombre incorrecto"
fi
