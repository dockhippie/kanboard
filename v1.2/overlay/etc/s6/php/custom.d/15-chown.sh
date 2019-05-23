#!/bin/bash

echo "> chown base directory"
find ${KANBOARD_BASE_DIR} \( \! -user caddy -o \! -group caddy \) -print0 | xargs -0 -r chown caddy:caddy

if [[ ! ${KANBOARD_DATA_DIR} =~ ^${KANBOARD_BASE_DIR} ]]
then
  echo "> chown data directory"
  find ${KANBOARD_DATA_DIR} \( \! -user caddy -o \! -group caddy \) -print0 | xargs -r -0 chown caddy:caddy
fi

if [[ ! ${KANBOARD_PLUGINS_DIR} =~ ^${KANBOARD_BASE_DIR} ]]
then
  echo "> chown plugins directory"
  find ${KANBOARD_PLUGINS_DIR} \( \! -user caddy -o \! -group caddy \) -print0 | xargs -r -0 chown caddy:caddy
fi

if [[ ! ${KANBOARD_CACHE_DIR} =~ ^${KANBOARD_BASE_DIR} ]]
then
  echo "> chown cache directory"
  find ${KANBOARD_CACHE_DIR} \( \! -user caddy -o \! -group caddy \) -print0 | xargs -r -0 chown caddy:caddy
fi

if [[ ! ${KANBOARD_FILES_DIR} =~ ^${KANBOARD_BASE_DIR} ]]
then
  echo "> chown files directory"
  find ${KANBOARD_FILES_DIR} \( \! -user caddy -o \! -group caddy \) -print0 | xargs -r -0 chown caddy:caddy
fi
