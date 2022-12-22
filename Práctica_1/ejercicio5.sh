#!/bin/bash

#Este script imprime los números 5,4,3,2,1 usando un bucle while

num=5
while [[ $num -gt 0 ]]
do
  echo $num
  ((num--))
done
