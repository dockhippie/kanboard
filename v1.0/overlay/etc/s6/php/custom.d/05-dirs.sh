#!/bin/bash

echo "> creating app directories"
mkdir -p \
  ${KANBOARD_DATA_DIR} \
  ${KANBOARD_PLUGINS_DIR} \
  ${KANBOARD_CACHE_DIR} \
  ${KANBOARD_FILES_DIR}
