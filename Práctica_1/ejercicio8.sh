#!/bin/bash

#Este script  muestra el siguiente patron utilizando el bucle for

#1
#22
#333
#4444
#55555

for (( x=1; x<=5; x++ ))
do
  for (( y=1; y<=x; y++ ))
  do
    echo -e "$x\c"
  done
  echo ""
done
