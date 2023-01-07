#!/bin/bash

#Este script imprime el siguiente menú:

#1 - Sumar
#2 - Restar
#3 - Dividir
#4 - Multiplicar
#0 - Salir

#Después de mostrar el menú, se pedirá que se muestre una opción. Si la opción elegida
#no está entre el 1 y el 4, se mostrará un mensaje de error. En caso de que la opción
#sea válida, se pedirán dos números por teclado y en función de la operación elegida
#se devolverá el resultado por pantalla.
#Cada operación será implementada haciendo uso de funciones
#Si la opción elegida no es válida, se volverá a mostrar el menú.
#El programa terminará, cuando se pulse 0.

echo "------ MENÚ ------"
echo " 1 - Sumar"
echo " 2 - Restar"
echo " 3 - Dividir"
echo " 4 - Multiplicar"
echo " 0 - Salir"
echo "------------------"

op=1

while [ $op -ne 0 ]
do

  read -p "Selecciona una operación a realizar: " op

  function quest(){
    read -p "Indica el primer número para realizar la operación: " num1
    read -p "Indica el segundo número para realizar la operación: " num2
  }

  function suma(){
    echo "El resultado es:" $(($num1+$num2));
    echo
  }

  function resta(){
    echo "El resultado es:" $(($num1-$num2));
    echo
  }

  function div(){
    echo "El resultado es:" $(($num1/$num2));
    echo
  }

  function mult(){
    echo "El resultado es:" $(($num1*$num2));
    echo
  }

  case $op in
    1)
      quest
      suma
      ;;

    2)
      quest
      resta
      ;;

    3)
      quest
      div

      ;;
    4)
      quest
      mult
      ;;

    0)
      exit
      ;;

    *)
      echo
      echo "Operación inválida, porfavor intentalo de nuevo"
      echo
      echo "------ MENÚ ------"
      echo " 1 - Sumar"
      echo " 2 - Restar"
      echo " 3 - Dividir"
      echo " 4 - Multiplicar"
      echo " 0 - Salir"
      echo "------------------"
      ;;

  esac

done
