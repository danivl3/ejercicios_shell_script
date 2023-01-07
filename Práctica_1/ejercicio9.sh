#!/bin/bash

#Este script solicita un numero y dice si es par o impar

read  -p "Introduce un numero:" num

rest=$(($num%2))

if [ $rest -eq 0 ]
then
  echo "El numero es par"
else
  echo "El numero es impar"
fi
