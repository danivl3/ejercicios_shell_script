#!/bin/bash

#Este script limpia la carpeta temporal (/tmp o /temp.) a las 2:00 de cada domingo

echo "0 2 * * 0	root	/home/admin01/github/ejercicios_shell_script/Práctica_4/ejercicio7.sh" >> /etc/crontab

rm -rf /tmp/*
