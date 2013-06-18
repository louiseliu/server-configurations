#!/bin/bash
while inotifywait -cre modify,create,delete /home/[__CLIENT__]/sites/[__SITE_NAME__] | cat >> /home/[__CLIENT__]/logs/inotify/update.log; do
    sleep 10
    date | cat >> /home/[__CLIENT__]/logs/inotify/restart.log
    service varnish restart | cat >> /home/[__CLIENT__]/logs/inotify/restart.log
done