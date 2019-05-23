#!/bin/bash

echo "> remove plugin dir"
rm -rf /srv/www/plugins

echo "> symlink app plugins"
ln -sf \
  ${KANBOARD_PLUGINS_DIR} \
  /srv/www/plugins
