#!/bin/bash

#Este script consiste en un juego de adivinar un número del 1 al 100.
#El número a adivinar se pondrá fijo al principio del script.
#Se le irán preguntando números al usuario y se dirá si el número es
#mayor o menor que el que hay que adivinar. El juego termina si el
#usuario averigua el número (Mensaje de Enhorabuena) o introduce un 0
#(Se rinde)

random=$(($RANDOM%100))

while [[ $num -ne $random ]]
do
  read -p "Introduce un número: " num

  if [ $num -gt $random ]
  then
    echo "El número secreto es menor que $num"
  elif [ $num -lt $random ]
  then
    echo "El número secreto es mayor que $num"
  fi
done

echo "Enhorabuena, has adivinado el número secreto"
