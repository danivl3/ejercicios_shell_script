#!/bin/bash

#Este script verifica si el número pasado por parámetro es primo o no

#!/bin/bash

if [ $1 -lt 2 ]
then
  echo "El número $1 no es primo"
else
  for (( i=2; i<$1; i++ ))
  do
    rest=$(($1%i))
    if [ $rest -eq 0 ]
    then
      echo "El número $1 no es primo"
      exit
    fi
  done
  echo "El número $1 es primo"
fi
