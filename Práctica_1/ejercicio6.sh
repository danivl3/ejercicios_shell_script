#!/bin/bash

#Este script muestra la tabla de multiplicar de un número pasado por parámetro.

mult=1
while [[ $mult -le 10 ]]
do
  resultado=$(($1*$mult))
  echo "$1 x $mult = $resultado"
  ((mult++))
done
