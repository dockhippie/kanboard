# Kanboard

[![Build Status](https://cloud.drone.io/api/badges/dockhippie/kanboard/status.svg)](https://cloud.drone.io/dockhippie/kanboard)
[![](https://images.microbadger.com/badges/image/webhippie/kanboard.svg)](https://microbadger.com/images/webhippie/kanboard "Get your own image badge on microbadger.com")

These are docker images for [Kanboard](https://kanboard.io/en-us/) running on an [Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](./latest) available as `webhippie/kanboard:latest`
* [1.2](./v1.2) available as `webhippie/kanboard:1.2`
* [1.1](./v1.1) available as `webhippie/kanboard:1.1`
* [1.0](./v1.0) available as `webhippie/kanboard:1.0`


## Volumes

* /var/lib/kanboard


## Ports

* 8080


## Available environment variables

```bash
KANBOARD_API_AUTHENTICATION_HEADER =
KANBOARD_BRUTEFORCE_CAPTCHA = 3
KANBOARD_BRUTEFORCE_LOCKDOWN = 6
KANBOARD_BRUTEFORCE_LOCKDOWN_DURATION = 15
KANBOARD_CACHE_DRIVER = memory
KANBOARD_DB_DRIVER = sqlite
KANBOARD_DB_HOSTNAME =
KANBOARD_DB_NAME /var/lib/kanboard/database.sqlite3
KANBOARD_DB_PASSWORD =
KANBOARD_DB_PORT =
KANBOARD_DB_RUN_MIGRATIONS = true
KANBOARD_DB_SSL_CA =
KANBOARD_DB_SSL_CERT =
KANBOARD_DB_SSL_KEY =
KANBOARD_DB_USERNAME =
KANBOARD_DB_VERIFY_SERVER_CERT =
KANBOARD_DEBUG = false
KANBOARD_DISABLE_LOGOUT = false
KANBOARD_ENABLE_HSTS = true
KANBOARD_ENABLE_URL_REWRITE = true
KANBOARD_ENABLE_XFRAME = true
KANBOARD_EXTERNAL_AUTH_EXCLUDE_FIELDS = username
KANBOARD_HIDE_LOGIN_FORM = false
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
KANBOARD_LDAP_GROUP_USER_FILTER =
KANBOARD_LDAP_PASSWORD =
KANBOARD_LDAP_PORT = 389
KANBOARD_LDAP_SERVER =
KANBOARD_LDAP_SSL_VERIFY = true
KANBOARD_LDAP_START_TLS = false
KANBOARD_LDAP_USERNAME =
KANBOARD_LDAP_USERNAME_CASE_SENSITIVE = false
KANBOARD_LDAP_USER_ATTRIBUTE_EMAIL = mail
KANBOARD_LDAP_USER_ATTRIBUTE_FULLNAME = cn
KANBOARD_LDAP_USER_ATTRIBUTE_GROUPS = memberof
KANBOARD_LDAP_USER_ATTRIBUTE_LANGUAGE =
KANBOARD_LDAP_USER_ATTRIBUTE_PHOTO =
KANBOARD_LDAP_USER_ATTRIBUTE_USERNAME = uid
KANBOARD_LDAP_USER_BASE_DN =
KANBOARD_LDAP_USER_CREATION = true
KANBOARD_LDAP_USER_FILTER =
KANBOARD_MAIL_CONFIGURATION = true
KANBOARD_MAIL_FROM = kanboard@example.com
KANBOARD_MAIL_SENDMAIL_COMMAND /usr/sbin/sendmail = -bs
KANBOARD_MAIL_SMTP_ENCRYPTION =
KANBOARD_MAIL_SMTP_HOSTNAME = localhost
KANBOARD_MAIL_SMTP_PASSWORD =
KANBOARD_MAIL_SMTP_PORT = 25
KANBOARD_MAIL_SMTP_USERNAME =
KANBOARD_MAIL_TRANSPORT = mail
KANBOARD_MARKDOWN_ESCAPE_HTML = true
KANBOARD_PLUGIN_API_URL = https://kanboard.org/plugins.json
KANBOARD_PLUGIN_INSTALLER = true
KANBOARD_PROJECT_ACTIVITIES_MAX_EVENTS = 10000
KANBOARD_REMEMBER_ME_AUTH = true
KANBOARD_REVERSE_PROXY_AUTH = false
KANBOARD_REVERSE_PROXY_DEFAULT_ADMIN =
KANBOARD_REVERSE_PROXY_DEFAULT_DOMAIN =
KANBOARD_REVERSE_PROXY_USER_HEADER = REMOTE_USER
KANBOARD_SESSION_DURATION = 0
KANBOARD_TOTP_ISSUER = Kanboard
```


## Inherited environment variables

* [webhippie/php-caddy](https://github.com/dockhippie/php/tree/master/caddy#available-environment-variables)
* [webhippie/caddy](https://github.com/dockhippie/caddy#available-environment-variables)
* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
