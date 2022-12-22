#!/bin/bash

#Este script comprueba si el fichero pasado por parámetro existe y tenemos permisos de lectura. En caso de tener permisos mostraremos el contenido del archivo.

if [[ -r $1 ]]
then
  echo "Este es el contenido del archivo:"
  echo "------------------------------------------------------------------"
  cat $1
  echo "------------------------------------------------------------------"
else
  echo "El archivo introducido no existe"
fi
