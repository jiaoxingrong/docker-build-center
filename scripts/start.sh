#!/bin/bash -

# Start supervisord and services
/usr/bin/supervisord  -c  /etc/supervisord.conf

while true;do
   if [ ! -f /var/start/status ];then
        exit 0
   fi
   sleep 10
done