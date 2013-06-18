#!/bin/bash
while inotifywait -cre modify,create,delete /etc/nginx /etc/php5 /etc/varnish | cat >> /home/[__CLIENT__]/logs/inotify/restart.log; do
    sleep 10
    date | cat >> /home/[__CLIENT__]/logs/inotify/restart.log
    service nginx restart | cat >> /home/[__CLIENT__]/logs/inotify/restart.log
    service newrelic-daemon restart | cat >> /home/[__CLIENT__]/logs/inotify/restart.log
    service php5-fpm restart | cat >> /home/[__CLIENT__]/logs/inotify/restart.log
    service varnish restart | cat >> /home/[__CLIENT__]/logs/inotify/restart.log
done