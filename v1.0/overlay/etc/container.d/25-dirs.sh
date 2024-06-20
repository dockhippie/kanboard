#!/usr/bin/env bash

echo "> creating app dirs"
mkdir -p \
    ${KANBOARD_BASE_DIR} \
    ${KANBOARD_DATA_DIR} \
    ${KANBOARD_PLUGINS_DIR} \
    ${KANBOARD_CACHE_DIR} \
    ${KANBOARD_FILES_DIR}

if [[ "${KANBOARD_SKIP_CHOWN}" != "true" ]]; then
    echo "> chown base dir"
    find ${KANBOARD_BASE_DIR} \( \! -user apache -o \! -group apache \) -print0 | xargs -0 -r chown apache:apache

    if [[ ! ${KANBOARD_DATA_DIR} =~ ^${KANBOARD_DATA_DIR} ]]; then
        echo "> chown data dir"
        find ${KANBOARD_DATA_DIR} \( \! -user apache -o \! -group apache \) -print0 | xargs -r -0 chown apache:apache
    fi

    if [[ ! ${KANBOARD_DATA_DIR} =~ ^${KANBOARD_PLUGINS_DIR} ]]; then
        echo "> chown plugins dir"
        find ${KANBOARD_PLUGINS_DIR} \( \! -user apache -o \! -group apache \) -print0 | xargs -r -0 chown apache:apache
    fi

    if [[ ! ${KANBOARD_DATA_DIR} =~ ^${KANBOARD_CACHE_DIR} ]]; then
        echo "> chown cache dir"
        find ${KANBOARD_CACHE_DIR} \( \! -user apache -o \! -group apache \) -print0 | xargs -r -0 chown apache:apache
    fi

    if [[ ! ${KANBOARD_DATA_DIR} =~ ^${KANBOARD_FILES_DIR} ]]; then
        echo "> chown files dir"
        find ${KANBOARD_FILES_DIR} \( \! -user apache -o \! -group apache \) -print0 | xargs -r -0 chown apache:apache
    fi
fi

true
