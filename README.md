# Kanboard

[![](https://images.microbadger.com/badges/image/webhippie/kanboard.svg)](https://microbadger.com/images/webhippie/kanboard "Get your own image badge on microbadger.com")

These are docker images for [Kanboard](https://kanboard.net/) running on an [PHP Caddy container](https://registry.hub.docker.com/u/webhippie/php-caddy/).


## Versions

* [latest](https://github.com/dockhippie/kanboard/tree/master) available as ```webhippie/kanboard:latest``` at [Docker Hub](https://registry.hub.docker.com/u/webhippie/kanboard/)
* [1.0.43](https://github.com/dockhippie/kanboard/tree/1.0.43) available as ```webhippie/kanboard:1.0.43``` at [Docker Hub](https://registry.hub.docker.com/u/webhippie/kanboard/)
* [1.0.42](https://github.com/dockhippie/kanboard/tree/1.0.42) available as ```webhippie/kanboard:1.0.42``` at [Docker Hub](https://registry.hub.docker.com/u/webhippie/kanboard/)


## Volumes

* /var/lib/kanboard


## Ports

* 8080


## Available environment variables

```bash
ENV KANBOARD_DEBUG false
ENV KANBOARD_PLUGIN_API_URL https://kanboard.org/plugins.json
ENV KANBOARD_PLUGIN_INSTALLER true
ENV KANBOARD_CACHE_DRIVER memory
ENV KANBOARD_MAIL_CONFIGURATION true
ENV KANBOARD_MAIL_FROM kanboard@example.com
ENV KANBOARD_MAIL_TRANSPORT mail
ENV KANBOARD_MAIL_SMTP_HOSTNAME localhost
ENV KANBOARD_MAIL_SMTP_PORT 25
ENV KANBOARD_MAIL_SMTP_USERNAME
ENV KANBOARD_MAIL_SMTP_PASSWORD
ENV KANBOARD_MAIL_SMTP_ENCRYPTION
ENV KANBOARD_MAIL_SENDMAIL_COMMAND /usr/sbin/sendmail -bs
ENV KANBOARD_DB_RUN_MIGRATIONS true
ENV KANBOARD_DB_DRIVER sqlite
ENV KANBOARD_DB_USERNAME
ENV KANBOARD_DB_PASSWORD
ENV KANBOARD_DB_HOSTNAME
ENV KANBOARD_DB_NAME /var/lib/kanboard/database.sqlite3 # or kanboard for other drivers
ENV KANBOARD_DB_PORT
ENV KANBOARD_DB_SSL_KEY
ENV KANBOARD_DB_SSL_CERT
ENV KANBOARD_DB_SSL_CA
ENV KANBOARD_LDAP_AUTH false
ENV KANBOARD_LDAP_SERVER
ENV KANBOARD_LDAP_PORT 389
ENV KANBOARD_LDAP_SSL_VERIFY true
ENV KANBOARD_LDAP_START_TLS false
ENV KANBOARD_LDAP_USERNAME_CASE_SENSITIVE false
ENV KANBOARD_LDAP_BIND_TYPE anonymous
ENV KANBOARD_LDAP_USERNAME
ENV KANBOARD_LDAP_PASSWORD
ENV KANBOARD_LDAP_USER_BASE_DN
ENV KANBOARD_LDAP_USER_FILTER
ENV KANBOARD_LDAP_USER_ATTRIBUTE_USERNAME uid
ENV KANBOARD_LDAP_USER_ATTRIBUTE_FULLNAME cn
ENV KANBOARD_LDAP_USER_ATTRIBUTE_EMAIL mail
ENV KANBOARD_LDAP_USER_ATTRIBUTE_GROUPS memberof
ENV KANBOARD_LDAP_USER_ATTRIBUTE_PHOTO
ENV KANBOARD_LDAP_USER_ATTRIBUTE_LANGUAGE
ENV KANBOARD_LDAP_USER_CREATION true
ENV KANBOARD_LDAP_GROUP_ADMIN_DN
ENV KANBOARD_LDAP_GROUP_MANAGER_DN
ENV KANBOARD_LDAP_GROUP_PROVIDER false
ENV KANBOARD_LDAP_GROUP_BASE_DN
ENV KANBOARD_LDAP_GROUP_FILTER
ENV KANBOARD_LDAP_GROUP_USER_FILTER
ENV KANBOARD_LDAP_GROUP_ATTRIBUTE_NAME cn
ENV KANBOARD_REVERSE_PROXY_AUTH false
ENV KANBOARD_REVERSE_PROXY_USER_HEADER REMOTE_USER
ENV KANBOARD_REVERSE_PROXY_DEFAULT_ADMIN
ENV KANBOARD_REVERSE_PROXY_DEFAULT_DOMAIN
ENV KANBOARD_REMEMBER_ME_AUTH true
ENV KANBOARD_ENABLE_HSTS true
ENV KANBOARD_ENABLE_XFRAME true
ENV KANBOARD_MARKDOWN_ESCAPE_HTML true
ENV KANBOARD_API_AUTHENTICATION_HEADER
ENV KANBOARD_ENABLE_URL_REWRITE true
ENV KANBOARD_HIDE_LOGIN_FORM false
ENV KANBOARD_DISABLE_LOGOUT false
ENV KANBOARD_BRUTEFORCE_CAPTCHA 3
ENV KANBOARD_BRUTEFORCE_LOCKDOWN 6
ENV KANBOARD_BRUTEFORCE_LOCKDOWN_DURATION 15
ENV KANBOARD_SESSION_DURATION 0
ENV KANBOARD_HTTP_PROXY_HOSTNAME
ENV KANBOARD_HTTP_PROXY_PORT 3128
ENV KANBOARD_HTTP_PROXY_USERNAME
ENV KANBOARD_HTTP_PROXY_PASSWORD
ENV KANBOARD_HTTP_VERIFY_SSL_CERTIFICATE true
ENV KANBOARD_TOTP_ISSUER Kanboard
ENV KANBOARD_EXTERNAL_AUTH_EXCLUDE_FIELDS username
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
Copyright (c) 2015-2017 Thomas Boerger <http://www.webhippie.de>
```
