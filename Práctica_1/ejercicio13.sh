#!/bin/bash

#Este script va dando la suma de todos los números que se introduzcan por
#teclado hasta que se introduzca un 0, en cuyo caso se mostrará el último
#resultado y terminará el script.

read -p "Introduce un número: " num1
echo $num1
read -p "Introduce un número a sumar: " num2
suma=$(($num1+$num2))
echo $suma

while [ $num2 -ne 0 ]
do
  read -p "Introduce un número a sumar: " num2
  suma=$(($suma+$num2))
  echo $suma
done
