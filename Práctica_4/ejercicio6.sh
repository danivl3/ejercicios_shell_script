#!/bin/bash

#Este script con cron escribe cada 10 minutos los siguientes datos en el fichero
#/var/log/historial.txt. A continuación se muestra un ejemplo del contenido del fichero
#13:37:44 up 20 days, 59 min, 1 user, load average: 0,00, 0,00, 0,00 USER TTY FROM
#LOGIN@ IDLE JCPU PCPU WHAT root pts/0 36.pool85-57-33. 13:37 0.00s 0.00s 0.00s w

echo "*/1 * * * *	root	/home/admin01/github/ejercicios_shell_script/Práctica_4/ejercicio6.sh" >> /etc/crontab

date >> /var/log/historial.txt
uptime >> /var/log/historial.txt
w >> /var/log/historial.txt
