#!/bin/bash

#Este script busa todos los archivos que contengan la palabra Hack y los guarda en la
#carpeta /root/cuarentena/

find / | grep Hack > /root/cuarentena
