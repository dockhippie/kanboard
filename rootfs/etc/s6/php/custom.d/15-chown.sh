#!/bin/bash

echo "> chown app storage"
find /var/lib/kanboard \( \! -user caddy -o \! -group caddy \) -print0 | xargs -0 -r chown caddy:caddy
