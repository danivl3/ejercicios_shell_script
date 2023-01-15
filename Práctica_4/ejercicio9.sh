#!/bin/bash

#Este script genera una copia de seguridad del directorio /etc en el fichero
#/root/copia_etc_fecha.tgz cada vez que es ejecutado (indicando la fecha cuándo
#se ha generado la copia de seguridad)

fecha=$(date +%Y-%m-%d)

tar -zcvf /root/copia_etc_$fecha.tgz /etc >> /dev/null
