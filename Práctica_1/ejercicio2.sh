#!/bin/bash

#Este script suma dos números que se pasan como parámetros y si no son pasados devolverá error y se mostrará un mensaje indicando la forma de ejecutar el script

if [[ $# = 2 ]]
then
  echo $(($1 + $2));
else
  echo "No se han introducido los parámetros correctamente."
  echo "Sigue el ejemplo para introducirlos correctamente."
  echo "Ejemplo: bash ejercicio2.sh 2 4"
fi
