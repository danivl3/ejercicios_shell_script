#!/bin/bash

#Este script muestra la lista de los últimos usuarios que iniciaron sesión,
#incluidas las direcciones IP Origen. (Solo debe mostrar las líneas en las
#que aparece una IP) Gracias al uso del comando last y egrep.

last | egrep "([0-9]{1,3}\.){3}[0-9]{1,3}"
