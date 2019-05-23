#!/bin/bash

echo "> remove data dir"
rm -rf /srv/www/data

echo "> symlink app data"
ln -sf \
  ${KANBOARD_DATA_DIR} \
  /srv/www/data

echo "> remove plugin dir"
rm -rf /srv/www/plugins

echo "> symlink app plugins"
ln -sf \
  ${KANBOARD_PLUGINS_DIR} \
  /srv/www/plugins
