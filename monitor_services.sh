#!/bin/bash

LOGFILE="/home/mohameds/Desktop/mon_journal.log"
DATE=$(date "+%Y-%m-%d %H:%M:%S")
#SURVEILLANCE NGINX
if [ "$(systemctl is-active nginx)" != "active" ]; then
    echo "$DATE : Nginx a planté, on le rallume..." >> $LOGFILE
    sudo systemctl start nginx
else
    echo "$DATE : Nginx fonctionne très bien." >> $LOGFILE
fi

#SURVEILLANCE POSTGRESQL
if [ "$(systemctl is-active postgresql)" != "active" ]; then
	echo "$DATE : PostgreSQL a planté, on le relance..." >> $LOGFILE
	sudo systemctl start postgresql
else
	echo  "$DATE : PostgreSQL fonctionne très bien." >> $LOGFILE
fi
