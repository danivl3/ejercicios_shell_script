#!/bin/bash

#Este script permite dar de alta y de baja a usuario del sistema GNU/Linux
#indicados como argumento:
#./ejercicio3.sh alta/baja nombre apellido1 apellido2 [grupo]
#- En el caso de que se le pase la opción alta:
#El script asignará al usuario un identificativo para el sistema con el
#formato aluXXYYZ donde XX son las dos primeras letras del apellido1,
#YY son las dos primeras letras del apellido2 y Z es la inicial del nombre.
#En caso de no indicar el grupo al que pertenece, se creará un nuevo grupo
#con el mismo identificativo que el usuario.
#- En el caso de que se le pase la opción baja:
#El programa debe calcular la identificación del usuario, igual que se
#indica en el menú anterior, y proceder a dar de baja la cuenta.
#- En otro caso. Indicar “Error. La sintaxis correcta es ./ejercicio3.sh
#alta/baja nombre apellido1 apellido2 [grupo]”

surname1=${3:0:2}
surname2=${4:0:2}
name=${2:0:1}
alu="alu$surname1$surname2$name"

if [[ $1 == "alta" ]]
then
  if [[ $# -eq 5 ]]
  then
    groupadd $5 2> /dev/null
    useradd -g $5 $alu
  else
    useradd $alu
  fi
elif [[ $1 == "baja" ]]
then
  userdel $alu
else
  echo "Error. La sintaxis correcta es ./ejercicio3.sh alta/baja nombre apellido1 apellido2 [grupo]"
fi
