# kanboard

[![Docker Build](https://github.com/dockhippie/kanboard/actions/workflows/docker.yml/badge.svg)](https://github.com/dockhippie/kanboard/actions/workflows/docker.yml) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/kanboard)

These are docker images for [Kanboard][upstream] running on our
[Caddy PHP image][parent].

## Versions

For the available versions please look at [Docker Hub][dockerhub] or
[Quay][quayio] or check the existing folders within the
[GitHub repository][github].

## Volumes

*  /var/lib/kanboard

## Ports

*  8080

## Available environment variables

```console
KANBOARD_API_AUTHENTICATION_HEADER =
KANBOARD_BASE_DIR = /var/lib/kanboard
KANBOARD_BRUTEFORCE_CAPTCHA = 3
KANBOARD_BRUTEFORCE_LOCKDOWN = 6
KANBOARD_BRUTEFORCE_LOCKDOWN_DURATION = 15
KANBOARD_CACHE_DIR = ${KANBOARD_BASE_DIR}/cache
KANBOARD_CACHE_DRIVER = memory
KANBOARD_DASHBOARD_MAX_PROJECTS = 10 # added on v1.2
KANBOARD_DATA_DIR = ${KANBOARD_BASE_DIR}/data
KANBOARD_DB_DRIVER = sqlite
KANBOARD_DB_HOSTNAME =
KANBOARD_DB_NAME = /var/lib/kanboard/database.sqlite3
KANBOARD_DB_ODBC_DSN = kanboard # added on v1.2
KANBOARD_DB_PASSWORD =
KANBOARD_DB_PORT =
KANBOARD_DB_RUN_MIGRATIONS = true
KANBOARD_DB_SSL_CA =
KANBOARD_DB_SSL_CERT =
KANBOARD_DB_SSL_KEY =
KANBOARD_DB_TIMEOUT = # added on v1.2
KANBOARD_DB_USERNAME =
KANBOARD_DB_VERIFY_SERVER_CERT = # added on v1.2
KANBOARD_DB_WAIT_FOR_FAIL = true
KANBOARD_DB_WAIT_FOR_FAIL = true
KANBOARD_DEBUG = false
KANBOARD_DISABLE_LOGOUT = false
KANBOARD_ENABLE_HSTS = true
KANBOARD_ENABLE_URL_REWRITE = true
KANBOARD_ENABLE_XFRAME = true
KANBOARD_EXTERNAL_AUTH_EXCLUDE_FIELDS = username # added on v1.1
KANBOARD_FILES_DIR = ${KANBOARD_BASE_DIR}/files
KANBOARD_HIDE_LOGIN_FORM = false
KANBOARD_HTTP_PROXY_EXCLUDE = localhost # added on v1.2
KANBOARD_HTTP_PROXY_HOSTNAME =
KANBOARD_HTTP_PROXY_PASSWORD =
KANBOARD_HTTP_PROXY_PORT = 3128
KANBOARD_HTTP_PROXY_USERNAME =
KANBOARD_HTTP_VERIFY_SSL_CERTIFICATE = true
KANBOARD_LDAP_AUTH = false
KANBOARD_LDAP_BIND_TYPE = anonymous
KANBOARD_LDAP_GROUP_ADMIN_DN =
KANBOARD_LDAP_GROUP_ATTRIBUTE_NAME = cn
KANBOARD_LDAP_GROUP_BASE_DN =
KANBOARD_LDAP_GROUP_FILTER =
KANBOARD_LDAP_GROUP_MANAGER_DN =
KANBOARD_LDAP_GROUP_PROVIDER = false
KANBOARD_LDAP_GROUP_SYNC = true # added on v1.2
KANBOARD_LDAP_GROUP_USER_ATTRIBUTE = username # added on v1.2
KANBOARD_LDAP_GROUP_USER_FILTER =
KANBOARD_LDAP_PASSWORD =
KANBOARD_LDAP_PORT = 389
KANBOARD_LDAP_SERVER =
KANBOARD_LDAP_SSL_VERIFY = true
KANBOARD_LDAP_START_TLS = false
KANBOARD_LDAP_USER_ATTRIBUTE_EMAIL = mail
KANBOARD_LDAP_USER_ATTRIBUTE_FULLNAME = cn
KANBOARD_LDAP_USER_ATTRIBUTE_GROUPS = memberof
KANBOARD_LDAP_USER_ATTRIBUTE_LANGUAGE =
KANBOARD_LDAP_USER_ATTRIBUTE_PHOTO =
KANBOARD_LDAP_USER_ATTRIBUTE_USERNAME = uid
KANBOARD_LDAP_USER_BASE_DN =
KANBOARD_LDAP_USER_CREATION = true
KANBOARD_LDAP_USER_DEFAULT_ROLE_MANAGER = false # added on v1.2
KANBOARD_LDAP_USER_FILTER =
KANBOARD_LDAP_USERNAME =
KANBOARD_LDAP_USERNAME_CASE_SENSITIVE = false
KANBOARD_LOG_DRIVER = stderr
KANBOARD_LOG_FILE = ${KANBOARD_BASE_DIR}/debug.log
KANBOARD_MAIL_BCC = # added on v1.2
KANBOARD_MAIL_CONFIGURATION = true
KANBOARD_MAIL_FROM = kanboard@example.com
KANBOARD_MAIL_SENDMAIL_COMMAND = /usr/sbin/sendmail -bs
KANBOARD_MAIL_SMTP_ENCRYPTION =
KANBOARD_MAIL_SMTP_HELO_NAME = # added on v1.2
KANBOARD_MAIL_SMTP_HOSTNAME = localhost
KANBOARD_MAIL_SMTP_PASSWORD =
KANBOARD_MAIL_SMTP_PORT = 25
KANBOARD_MAIL_SMTP_USERNAME =
KANBOARD_MAIL_TRANSPORT = mail
KANBOARD_MARKDOWN_ESCAPE_HTML = true
KANBOARD_PLUGIN_API_URL = https://kanboard.org/plugins.json
KANBOARD_PLUGIN_INSTALLER = true
KANBOARD_PLUGINS_DIR = ${KANBOARD_BASE_DIR}/plugins
KANBOARD_REMEMBER_ME_AUTH = true
KANBOARD_REVERSE_PROXY_AUTH = false
KANBOARD_REVERSE_PROXY_DEFAULT_ADMIN =
KANBOARD_REVERSE_PROXY_DEFAULT_DOMAIN =
KANBOARD_REVERSE_PROXY_EMAIL_HEADER = REMOTE_EMAIL # added on v1.2
KANBOARD_REVERSE_PROXY_FULLNAME_HEADER = REMOTE_NAME # added on v1.2
KANBOARD_REVERSE_PROXY_USER_HEADER = REMOTE_USER
KANBOARD_SESSION_DURATION = 0
KANBOARD_SESSION_HANDLER = db # added on v1.2
KANBOARD_SHOW_GROUP_MEMBERSHIPS_IN_USERLIST = true # added on v1.2
KANBOARD_SHOW_GROUP_MEMBERSHIPS_IN_USERLIST_WITH_LIMIT = 7 # added on v1.2
KANBOARD_SKIP_CHOWN = false
KANBOARD_TOTP_ISSUER = Kanboard
```

## Inherited environment variables

*  [webhippie/php-caddy](https://github.com/dockhippie/php-caddy#available-environment-variables)
*  [webhippie/caddy](https://github.com/dockhippie/caddy#available-environment-variables)
*  [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```

[upstream]: https://github.com/kanboard/kanboard
[parent]: https://github.com/dockhippie/php-caddy
[dockerhub]: https://hub.docker.com/r/webhippie/kanboard/tags
[quayio]: https://quay.io/repository/webhippie/kanboard?tab=tags
[github]: https://github.com/dockhippie/kanboard
