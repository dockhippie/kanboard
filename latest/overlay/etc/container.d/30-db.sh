#!/usr/bin/env bash

if [ -z "${KANBOARD_DB_NAME}" ]; then
    echo >&2 "missing KANBOARD_DB_NAME environment variable"
    exit 1
fi

case "${KANBOARD_DB_DRIVER}" in
    "sqlite")
        if [ ! -f "${KANBOARD_DB_NAME}" ]; then
            echo "> creating sqlite db"
            su-exec \
                apache \
                sqlite3 \
                ${KANBOARD_DB_NAME} \
                ""
        fi
        ;;

    "mysql")
        if [ -z "${KANBOARD_DB_HOSTNAME}" ]; then
            echo >&2 "missing KANBOARD_DB_HOSTNAME environment variable"
            exit 1
        fi

        if [ -z "${KANBOARD_DB_PORT}" ]; then
            echo >&2 "missing KANBOARD_DB_PORT environment variable"
            exit 1
        fi

        echo "> waiting for mysql"
        wait-for-it -t 60 ${KANBOARD_DB_HOSTNAME}:${KANBOARD_DB_PORT}

        if [[ $? -ne 0 && "${KANBOARD_DB_WAIT_FOR_FAIL}" == "true" ]]; then
            echo "> database didn't came up"
            exit 1
        fi
        ;;

    "postgres")
        if [ -z "${KANBOARD_DB_HOSTNAME}" ]; then
            echo >&2 "missing KANBOARD_DB_HOSTNAME environment variable"
            exit 1
        fi

        if [ -z "${KANBOARD_DB_PORT}" ]; then
            echo >&2 "missing KANBOARD_DB_PORT environment variable"
            exit 1
        fi

        echo "> waiting for postgres"
        wait-for-it -t 60 ${KANBOARD_DB_HOSTNAME}:${KANBOARD_DB_PORT}

        if [[ $? -ne 0 && "${KANBOARD_DB_WAIT_FOR_FAIL}" == "true" ]]; then
            echo "> database didn't came up"
            exit 1
        fi
        ;;
esac

true
