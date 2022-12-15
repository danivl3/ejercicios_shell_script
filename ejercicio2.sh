#!/bin/bash

#Este script suma dos números que se pasan como parámetros y si no son pasados devolverá error y se mostrará un mensaje indicando la forma de ejecutar el script

if [[-n $@]]
then
echo $(($1 + $2));
