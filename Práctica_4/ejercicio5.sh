#!/bin/bash

#Este script realizado con cron muestra la fecha del sistema cada 5 minutos

echo "*/5 * * * *	root	date" >> /etc/crontab
