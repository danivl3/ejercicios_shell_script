#!/bin/bash

#Este script recibe como parámetro un nombre de usuario, y dice si está o no en el sistema
#(primero dice si está dado de alta, y a continuación si ha iniciado una sesión).

if grep $1 /etc/passwd > /dev/null
then
  echo "El usuario $1 está dado de alta"
else
  echo "El usuario $1 no está dado de alta"
fi

if who | grep $1 > /dev/null
then
  echo "El usuario $1 tiene una sesión iniciada"
else
  echo "El usuario $1 no tiene una sesión iniciada"
fi
