#!/bin/bash

#Este script escribe en el fichero /tmp/usuarios una línea con la fecha y otra con el
#número de usuarios distintos que están conectados en ese momento cada dos minutos.

echo "*/2 * * * *	root	/home/admin01/github/ejercicios_shell_script/Práctica_4/ejercicio8.sh" >> /etc/crontab

date >> /tmp/usuarios
echo "Conectados:" $(who | wc -l) >> /tmp/usuarios
