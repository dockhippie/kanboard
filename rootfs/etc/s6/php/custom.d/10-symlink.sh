#!/bin/bash

echo "> symlink app plugins"
rm -rf /srv/www/plugins
ln -sf \
  /var/lib/kanboard/plugins \
  /srv/www/plugins
