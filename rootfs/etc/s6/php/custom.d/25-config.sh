#!/bin/bash

echo "> writing config"
/usr/bin/templater -d -p kanboard \
  -o /srv/www/config.php \
  /etc/templates/config.php.tmpl

if [[ $? -ne 0 ]]
then
  /bin/s6-svscanctl -t /etc/s6
  exit 1
fi
