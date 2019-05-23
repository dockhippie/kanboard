#!/bin/bash

case "${KANBOARD_DB_DRIVER}" in
  "sqlite")
    if [ -z "${KANBOARD_DB_NAME}" ]
    then
      echo >&2 "Error: You have to provide KANBOARD_DB_NAME environment variable"
      /bin/s6-svscanctl -t /etc/s6
      exit 1
    fi

    if [ ! -f "${KANBOARD_DB_NAME}" ]
    then
      echo "> creating database"
      su-exec \
        caddy \
        /usr/bin/sqlite3 \
        ${KANBOARD_DB_NAME} \
        ""
    fi
    ;;

  "mysql")
    if [ -z "${KANBOARD_DB_USERNAME}" ]
    then
      echo >&2 "Error: You have to provide KANBOARD_DB_USERNAME environment variable"
      /bin/s6-svscanctl -t /etc/s6
      exit 1
    fi

    if [ -z "${KANBOARD_DB_PASSWORD}" ]
    then
      echo >&2 "Error: You have to provide KANBOARD_DB_PASSWORD environment variable"
      /bin/s6-svscanctl -t /etc/s6
      exit 1
    fi
    ;;

  "postgres")
    if [ -z "${KANBOARD_DB_USERNAME}" ]
    then
      echo >&2 "Error: You have to provide KANBOARD_DB_USERNAME environment variable"
      /bin/s6-svscanctl -t /etc/s6
      exit 1
    fi

    if [ -z "${KANBOARD_DB_PASSWORD}" ]
    then
      echo >&2 "Error: You have to provide KANBOARD_DB_PASSWORD environment variable"
      /bin/s6-svscanctl -t /etc/s6
      exit 1
    fi
    ;;
esac
