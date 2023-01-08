#!/bin/bash

#Este script busca cualquier fichero que pueda ser modificado por cualquier usuario
#(--- --- rwx) y guarda la lista de ficheros con la ruta exacta en el archivo
#archivos_peligrosos.txt

find / -perm 777 -type f | grep "^/.*" > archivos_peligrosos.txt
