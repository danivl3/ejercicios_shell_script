#!/bin/bash

#Este script permita:
#Reiniciar el equipo ahora
#Reiniciar el equipo dentro de N minutos (el valor de N se pasa como
#parámetro) Si el usuario no escribe ningún parámetro entonces nos
#mostrará las listas de opciones

if [[ $# -eq 1 ]]
then
  shutdown -r $1
else
  echo "---------- Tipos de reinicio ----------"
  echo " 1. Reiniciar el equipo ahora          "
  echo " 2. Reiniciar el equipo en N minutos   "
  echo

  read -p "Selecciona la opción deseada: " option

  case $option in
    1)
      shutdown -r now
      ;;
    2)
      read -p "El quipo se reiniciara en los minutos indicados: " min
      shutdown -r $min
      ;;
  esac
fi
