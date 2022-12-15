#!/bin/bash

#Se le pasan como parámetros dos números enteros y el programa me debe decir qué número es mayor

if [[ $1 > $2 ]]
then
    echo "El primer parámetro es mayor que el segundo"
elif [[ $1 = $2 ]]
then
    echo "Los dos parámetros són iguales"
else
    echo "El primer parámetro es menor que el segundo"
fi