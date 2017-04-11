#!/bin/bash

echo "> symlink plugins"
rm -rf /srv/www/plugins
ln -sf \
  /var/lib/kanboard/plugins \
  /srv/www/plugins
