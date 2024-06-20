#!/usr/bin/env bash

echo "> writing app config"
gomplate -V \
    -o /srv/www/config.php \
    -f /etc/templates/config.php.tmpl

if [[ $? -ne 0 ]]; then
    echo "> writing config failed!"
    exit 1
fi

true
