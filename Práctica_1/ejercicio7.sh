#!/bin/bash

#Este script muestra el siguiente patron utilizando un bucle for

#1
#12
#123
#1234
#12345

for (( x=1; x<=5; x++ ))
do
  for (( y=1; y<=$x; y++ ))
  do
    echo -e "$y\c"
  done
  echo ""
done
