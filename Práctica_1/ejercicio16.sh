#!/bin/bash

#Este script, dado el nombre de un directorio como parámetro, muestra
#las estadísticas de cuantos ficheros y cuantos subdirectorios contiene.
#Debe comprobar que existe el directorio que se pasa como parámetro y
#que efectivamente es un directorio.

if [[ -d $1 ]]
then
  echo "El directorio $1 contiene $(find $1 -type f | wc -l) ficheros y $(find $1 -type d | wc -l) subdirectorios"
else
  echo "El directorio no existe o no se ha pasado un directorio"
fi
