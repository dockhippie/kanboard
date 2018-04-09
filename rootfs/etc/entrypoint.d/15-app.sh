#!/bin/bash

declare -x KANBOARD_DEBUG
[[ -z "${KANBOARD_DEBUG}" ]] && KANBOARD_DEBUG="false"

declare -x KANBOARD_PLUGIN_API_URL
[[ -z "${KANBOARD_PLUGIN_API_URL}" ]] && KANBOARD_PLUGIN_API_URL="https://kanboard.org/plugins.json"

declare -x KANBOARD_PLUGIN_INSTALLER
[[ -z "${KANBOARD_PLUGIN_INSTALLER}" ]] && KANBOARD_PLUGIN_INSTALLER="true"

declare -x KANBOARD_CACHE_DRIVER
[[ -z "${KANBOARD_CACHE_DRIVER}" ]] && KANBOARD_CACHE_DRIVER="memory"

declare -x KANBOARD_MAIL_CONFIGURATION
[[ -z "${KANBOARD_MAIL_CONFIGURATION}" ]] && KANBOARD_MAIL_CONFIGURATION="true"

declare -x KANBOARD_MAIL_FROM
[[ -z "${KANBOARD_MAIL_FROM}" ]] && KANBOARD_MAIL_FROM="kanboard@example.com"

declare -x KANBOARD_MAIL_TRANSPORT
[[ -z "${KANBOARD_MAIL_TRANSPORT}" ]] && KANBOARD_MAIL_TRANSPORT="mail"

declare -x KANBOARD_MAIL_SMTP_HOSTNAME
[[ -z "${KANBOARD_MAIL_SMTP_HOSTNAME}" ]] && KANBOARD_MAIL_SMTP_HOSTNAME="localhost"

declare -x KANBOARD_MAIL_SMTP_PORT
[[ -z "${KANBOARD_MAIL_SMTP_PORT}" ]] && KANBOARD_MAIL_SMTP_PORT="25"

declare -x KANBOARD_MAIL_SMTP_USERNAME
[[ -z "${KANBOARD_MAIL_SMTP_USERNAME}" ]] && KANBOARD_MAIL_SMTP_USERNAME=""

declare -x KANBOARD_MAIL_SMTP_PASSWORD
[[ -z "${KANBOARD_MAIL_SMTP_PASSWORD}" ]] && KANBOARD_MAIL_SMTP_PASSWORD=""

declare -x KANBOARD_MAIL_SMTP_ENCRYPTION
[[ -z "${KANBOARD_MAIL_SMTP_ENCRYPTION}" ]] && KANBOARD_MAIL_SMTP_ENCRYPTION=""

declare -x KANBOARD_MAIL_SENDMAIL_COMMAND
[[ -z "${KANBOARD_MAIL_SENDMAIL_COMMAND}" ]] && KANBOARD_MAIL_SENDMAIL_COMMAND="/usr/sbin/sendmail -bs"

declare -x KANBOARD_DB_RUN_MIGRATIONS
[[ -z "${KANBOARD_DB_RUN_MIGRATIONS}" ]] && KANBOARD_DB_RUN_MIGRATIONS="true"

declare -x KANBOARD_LDAP_AUTH
[[ -z "${KANBOARD_LDAP_AUTH}" ]] && KANBOARD_LDAP_AUTH="false"

declare -x KANBOARD_LDAP_SERVER
[[ -z "${KANBOARD_LDAP_SERVER}" ]] && KANBOARD_LDAP_SERVER=""

declare -x KANBOARD_LDAP_PORT
[[ -z "${KANBOARD_LDAP_PORT}" ]] && KANBOARD_LDAP_PORT="389"

declare -x KANBOARD_LDAP_SSL_VERIFY
[[ -z "${KANBOARD_LDAP_SSL_VERIFY}" ]] && KANBOARD_LDAP_SSL_VERIFY="true"

declare -x KANBOARD_LDAP_START_TLS
[[ -z "${KANBOARD_LDAP_START_TLS}" ]] && KANBOARD_LDAP_START_TLS="false"

declare -x KANBOARD_LDAP_USERNAME_CASE_SENSITIVE
[[ -z "${KANBOARD_LDAP_USERNAME_CASE_SENSITIVE}" ]] && KANBOARD_LDAP_USERNAME_CASE_SENSITIVE="false"

declare -x KANBOARD_LDAP_BIND_TYPE
[[ -z "${KANBOARD_LDAP_BIND_TYPE}" ]] && KANBOARD_LDAP_BIND_TYPE="anonymous"

declare -x KANBOARD_LDAP_USERNAME
[[ -z "${KANBOARD_LDAP_USERNAME}" ]] && KANBOARD_LDAP_USERNAME=""

declare -x KANBOARD_LDAP_PASSWORD
[[ -z "${KANBOARD_LDAP_PASSWORD}" ]] && KANBOARD_LDAP_PASSWORD=""

declare -x KANBOARD_LDAP_USER_BASE_DN
[[ -z "${KANBOARD_LDAP_USER_BASE_DN}" ]] && KANBOARD_LDAP_USER_BASE_DN=""

declare -x KANBOARD_LDAP_USER_FILTER
[[ -z "${KANBOARD_LDAP_USER_FILTER}" ]] && KANBOARD_LDAP_USER_FILTER=""

declare -x KANBOARD_LDAP_USER_ATTRIBUTE_USERNAME
[[ -z "${KANBOARD_LDAP_USER_ATTRIBUTE_USERNAME}" ]] && KANBOARD_LDAP_USER_ATTRIBUTE_USERNAME="uid"

declare -x KANBOARD_LDAP_USER_ATTRIBUTE_FULLNAME
[[ -z "${KANBOARD_LDAP_USER_ATTRIBUTE_FULLNAME}" ]] && KANBOARD_LDAP_USER_ATTRIBUTE_FULLNAME="cn"

declare -x KANBOARD_LDAP_USER_ATTRIBUTE_EMAIL
[[ -z "${KANBOARD_LDAP_USER_ATTRIBUTE_EMAIL}" ]] && KANBOARD_LDAP_USER_ATTRIBUTE_EMAIL="mail"

declare -x KANBOARD_LDAP_USER_ATTRIBUTE_GROUPS
[[ -z "${KANBOARD_LDAP_USER_ATTRIBUTE_GROUPS}" ]] && KANBOARD_LDAP_USER_ATTRIBUTE_GROUPS="memberof"

declare -x KANBOARD_LDAP_USER_ATTRIBUTE_PHOTO
[[ -z "${KANBOARD_LDAP_USER_ATTRIBUTE_PHOTO}" ]] && KANBOARD_LDAP_USER_ATTRIBUTE_PHOTO=""

declare -x KANBOARD_LDAP_USER_ATTRIBUTE_LANGUAGE
[[ -z "${KANBOARD_LDAP_USER_ATTRIBUTE_LANGUAGE}" ]] && KANBOARD_LDAP_USER_ATTRIBUTE_LANGUAGE=""

declare -x KANBOARD_LDAP_USER_CREATION
[[ -z "${KANBOARD_LDAP_USER_CREATION}" ]] && KANBOARD_LDAP_USER_CREATION="true"

declare -x KANBOARD_LDAP_GROUP_ADMIN_DN
[[ -z "${KANBOARD_LDAP_GROUP_ADMIN_DN}" ]] && KANBOARD_LDAP_GROUP_ADMIN_DN=""

declare -x KANBOARD_LDAP_GROUP_MANAGER_DN
[[ -z "${KANBOARD_LDAP_GROUP_MANAGER_DN}" ]] && KANBOARD_LDAP_GROUP_MANAGER_DN=""

declare -x KANBOARD_LDAP_GROUP_PROVIDER
[[ -z "${KANBOARD_LDAP_GROUP_PROVIDER}" ]] && KANBOARD_LDAP_GROUP_PROVIDER="false"

declare -x KANBOARD_LDAP_GROUP_BASE_DN
[[ -z "${KANBOARD_LDAP_GROUP_BASE_DN}" ]] && KANBOARD_LDAP_GROUP_BASE_DN=""

declare -x KANBOARD_LDAP_GROUP_FILTER
[[ -z "${KANBOARD_LDAP_GROUP_FILTER}" ]] && KANBOARD_LDAP_GROUP_FILTER=""

declare -x KANBOARD_LDAP_GROUP_USER_FILTER
[[ -z "${KANBOARD_LDAP_GROUP_USER_FILTER}" ]] && KANBOARD_LDAP_GROUP_USER_FILTER=""

declare -x KANBOARD_LDAP_GROUP_ATTRIBUTE_NAME
[[ -z "${KANBOARD_LDAP_GROUP_ATTRIBUTE_NAME}" ]] && KANBOARD_LDAP_GROUP_ATTRIBUTE_NAME="cn"

declare -x KANBOARD_REVERSE_PROXY_AUTH
[[ -z "${KANBOARD_REVERSE_PROXY_AUTH}" ]] && KANBOARD_REVERSE_PROXY_AUTH="false"

declare -x KANBOARD_REVERSE_PROXY_USER_HEADER
[[ -z "${KANBOARD_REVERSE_PROXY_USER_HEADER}" ]] && KANBOARD_REVERSE_PROXY_USER_HEADER="REMOTE_USER"

declare -x KANBOARD_REVERSE_PROXY_DEFAULT_ADMIN
[[ -z "${KANBOARD_REVERSE_PROXY_DEFAULT_ADMIN}" ]] && KANBOARD_REVERSE_PROXY_DEFAULT_ADMIN=""

declare -x KANBOARD_REVERSE_PROXY_DEFAULT_DOMAIN
[[ -z "${KANBOARD_REVERSE_PROXY_DEFAULT_DOMAIN}" ]] && KANBOARD_REVERSE_PROXY_DEFAULT_DOMAIN=""

declare -x KANBOARD_REMEMBER_ME_AUTH
[[ -z "${KANBOARD_REMEMBER_ME_AUTH}" ]] && KANBOARD_REMEMBER_ME_AUTH="true"

declare -x KANBOARD_ENABLE_HSTS
[[ -z "${KANBOARD_ENABLE_HSTS}" ]] && KANBOARD_ENABLE_HSTS="true"

declare -x KANBOARD_ENABLE_XFRAME
[[ -z "${KANBOARD_ENABLE_XFRAME}" ]] && KANBOARD_ENABLE_XFRAME="true"

declare -x KANBOARD_MARKDOWN_ESCAPE_HTML
[[ -z "${KANBOARD_MARKDOWN_ESCAPE_HTML}" ]] && KANBOARD_MARKDOWN_ESCAPE_HTML="true"

declare -x KANBOARD_API_AUTHENTICATION_HEADER
[[ -z "${KANBOARD_API_AUTHENTICATION_HEADER}" ]] && KANBOARD_API_AUTHENTICATION_HEADER=""

declare -x KANBOARD_ENABLE_URL_REWRITE
[[ -z "${KANBOARD_ENABLE_URL_REWRITE}" ]] && KANBOARD_ENABLE_URL_REWRITE="true"

declare -x KANBOARD_HIDE_LOGIN_FORM
[[ -z "${KANBOARD_HIDE_LOGIN_FORM}" ]] && KANBOARD_HIDE_LOGIN_FORM="false"

declare -x KANBOARD_DISABLE_LOGOUT
[[ -z "${KANBOARD_DISABLE_LOGOUT}" ]] && KANBOARD_DISABLE_LOGOUT="false"

declare -x KANBOARD_BRUTEFORCE_CAPTCHA
[[ -z "${KANBOARD_BRUTEFORCE_CAPTCHA}" ]] && KANBOARD_BRUTEFORCE_CAPTCHA="3"

declare -x KANBOARD_BRUTEFORCE_LOCKDOWN
[[ -z "${KANBOARD_BRUTEFORCE_LOCKDOWN}" ]] && KANBOARD_BRUTEFORCE_LOCKDOWN="6"

declare -x KANBOARD_BRUTEFORCE_LOCKDOWN_DURATION
[[ -z "${KANBOARD_BRUTEFORCE_LOCKDOWN_DURATION}" ]] && KANBOARD_BRUTEFORCE_LOCKDOWN_DURATION="15"

declare -x KANBOARD_SESSION_DURATION
[[ -z "${KANBOARD_SESSION_DURATION}" ]] && KANBOARD_SESSION_DURATION="0"

declare -x KANBOARD_HTTP_PROXY_HOSTNAME
[[ -z "${KANBOARD_HTTP_PROXY_HOSTNAME}" ]] && KANBOARD_HTTP_PROXY_HOSTNAME=""

declare -x KANBOARD_HTTP_PROXY_PORT
[[ -z "${KANBOARD_HTTP_PROXY_PORT}" ]] && KANBOARD_HTTP_PROXY_PORT="3128"

declare -x KANBOARD_HTTP_PROXY_USERNAME
[[ -z "${KANBOARD_HTTP_PROXY_USERNAME}" ]] && KANBOARD_HTTP_PROXY_USERNAME=""

declare -x KANBOARD_HTTP_PROXY_PASSWORD
[[ -z "${KANBOARD_HTTP_PROXY_PASSWORD}" ]] && KANBOARD_HTTP_PROXY_PASSWORD=""

declare -x KANBOARD_HTTP_VERIFY_SSL_CERTIFICATE
[[ -z "${KANBOARD_HTTP_VERIFY_SSL_CERTIFICATE}" ]] && KANBOARD_HTTP_VERIFY_SSL_CERTIFICATE="true"

declare -x KANBOARD_TOTP_ISSUER
[[ -z "${KANBOARD_TOTP_ISSUER}" ]] && KANBOARD_TOTP_ISSUER="Kanboard"

declare -x KANBOARD_EXTERNAL_AUTH_EXCLUDE_FIELDS
[[ -z "${KANBOARD_EXTERNAL_AUTH_EXCLUDE_FIELDS}" ]] && KANBOARD_EXTERNAL_AUTH_EXCLUDE_FIELDS="username"


declare -x KANBOARD_DB_DRIVER
[[ -z "${KANBOARD_DB_DRIVER}" ]] && KANBOARD_DB_DRIVER="sqlite"

case "${KANBOARD_DB_DRIVER}" in
  "sqlite")
    declare -x KANBOARD_DB_NAME
    [[ -z "${KANBOARD_DB_NAME}" ]] && KANBOARD_DB_NAME="/var/lib/kanboard/database.sqlite3"
    ;;

  "mysql")
    declare -x KANBOARD_DB_HOSTNAME
    [[ -z "${KANBOARD_DB_HOSTNAME}" ]] && KANBOARD_DB_HOSTNAME="mysql"

    declare -x KANBOARD_DB_PORT
    [[ -z "${KANBOARD_DB_PORT}" ]] && KANBOARD_DB_PORT="3306"

    declare -x KANBOARD_DB_NAME
    [[ -z "${KANBOARD_DB_NAME}" ]] && KANBOARD_DB_NAME="kanboard"

    declare -x KANBOARD_DB_USERNAME
    [[ -z "${KANBOARD_DB_USERNAME}" ]] && KANBOARD_DB_USERNAME="root"

    declare -x KANBOARD_DB_PASSWORD
    [[ -z "${KANBOARD_DB_PASSWORD}" ]] && KANBOARD_DB_PASSWORD="root"

    declare -x KANBOARD_DB_SSL_KEY
    [[ -z "${KANBOARD_DB_SSL_KEY}" ]] && KANBOARD_DB_SSL_KEY=""

    declare -x KANBOARD_DB_SSL_CERT
    [[ -z "${KANBOARD_DB_SSL_CERT}" ]] && KANBOARD_DB_SSL_CERT=""

    declare -x KANBOARD_DB_SSL_CA
    [[ -z "${KANBOARD_DB_SSL_CA}" ]] && KANBOARD_DB_SSL_CA=""

    declare -x KANBOARD_DB_VERIFY_SERVER_CERT
    [[ -z "${KANBOARD_DB_VERIFY_SERVER_CERT}" ]] && KANBOARD_DB_VERIFY_SERVER_CERT=""
    ;;

  "postgres")
    declare -x KANBOARD_DB_HOSTNAME
    [[ -z "${KANBOARD_DB_HOSTNAME}" ]] && KANBOARD_DB_HOSTNAME="postgres"

    declare -x KANBOARD_DB_PORT
    [[ -z "${KANBOARD_DB_PORT}" ]] && KANBOARD_DB_PORT="5432"

    declare -x KANBOARD_DB_NAME
    [[ -z "${KANBOARD_DB_NAME}" ]] && KANBOARD_DB_NAME="kanboard"

    declare -x KANBOARD_DB_USERNAME
    [[ -z "${KANBOARD_DB_USERNAME}" ]] && KANBOARD_DB_USERNAME="postgres"

    declare -x KANBOARD_DB_PASSWORD
    [[ -z "${KANBOARD_DB_PASSWORD}" ]] && KANBOARD_DB_PASSWORD="postgres"

    declare -x KANBOARD_DB_SSL_KEY
    [[ -z "${KANBOARD_DB_SSL_KEY}" ]] && KANBOARD_DB_SSL_KEY=""

    declare -x KANBOARD_DB_SSL_CERT
    [[ -z "${KANBOARD_DB_SSL_CERT}" ]] && KANBOARD_DB_SSL_CERT=""

    declare -x KANBOARD_DB_SSL_CA
    [[ -z "${KANBOARD_DB_SSL_CA}" ]] && KANBOARD_DB_SSL_CA=""

    declare -x KANBOARD_DB_VERIFY_SERVER_CERT
    [[ -z "${KANBOARD_DB_VERIFY_SERVER_CERT}" ]] && KANBOARD_DB_VERIFY_SERVER_CERT=""
    ;;
esac
