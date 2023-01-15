#!/bin/bash

#Este script guarda en el fichero /var/log/reinicios.txt la fecha de cada vez que se
#reinicia el equipo (pista @reboot en crontab)

date >> /var/log/reinicios.txt
(crontab -l ; echo "@reboot /home/admin01/github/ejercicios_shell_script/Prácrica_4/ejercicio4.sh") | crontab -
