# kanboard

[![Docker Build](https://github.com/dockhippie/kanboard/actions/workflows/docker.yml/badge.svg)](https://github.com/dockhippie/kanboard/actions/workflows/docker.yml) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/kanboard)

These are docker images for [Kanboard][upstream] running on our
[Apache PHP image][parent].

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
KANBOARD_DASHBOARD_MAX_PROJECTS = 10
KANBOARD_DATA_DIR = ${KANBOARD_BASE_DIR}/data
KANBOARD_DB_DRIVER = sqlite
KANBOARD_DB_ODBC_DSN = kanboard
KANBOARD_DB_RUN_MIGRATIONS = true
KANBOARD_DB_TIMEOUT =
KANBOARD_DB_WAIT_FOR_FAIL = true
KANBOARD_DEBUG = false
KANBOARD_DISABLE_LOGOUT = false
KANBOARD_ENABLE_HSTS = true
KANBOARD_ENABLE_URL_REWRITE = true
KANBOARD_ENABLE_XFRAME = true
KANBOARD_EXTERNAL_AUTH_EXCLUDE_FIELDS = username
KANBOARD_FILES_DIR = ${KANBOARD_BASE_DIR}/files
KANBOARD_HIDE_LOGIN_FORM = false
KANBOARD_HTTP_PROXY_EXCLUDE = localhost
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
KANBOARD_LDAP_GROUP_SYNC = true
KANBOARD_LDAP_GROUP_USER_ATTRIBUTE = username
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
KANBOARD_LDAP_USER_DEFAULT_ROLE_MANAGER = false
KANBOARD_LDAP_USER_FILTER =
KANBOARD_LDAP_USERNAME =
KANBOARD_LDAP_USERNAME_CASE_SENSITIVE = false
KANBOARD_LOG_DRIVER = stderr
KANBOARD_LOG_FILE = ${KANBOARD_BASE_DIR}/debug.log
KANBOARD_MAIL_BCC =
KANBOARD_MAIL_CONFIGURATION = true
KANBOARD_MAIL_FROM = kanboard@example.com
KANBOARD_MAIL_SENDMAIL_COMMAND = /usr/sbin/sendmail -bs
KANBOARD_MAIL_SMTP_ENCRYPTION =
KANBOARD_MAIL_SMTP_HELO_NAME =
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
KANBOARD_REVERSE_PROXY_EMAIL_HEADER = REMOTE_EMAIL
KANBOARD_REVERSE_PROXY_FULLNAME_HEADER = REMOTE_NAME
KANBOARD_REVERSE_PROXY_USER_HEADER = REMOTE_USER
KANBOARD_SESSION_DURATION = 0
KANBOARD_SESSION_HANDLER = db
KANBOARD_SHOW_GROUP_MEMBERSHIPS_IN_USERLIST = true
KANBOARD_SHOW_GROUP_MEMBERSHIPS_IN_USERLIST_WITH_LIMIT = 7
KANBOARD_SKIP_CHOWN = false
KANBOARD_TOTP_ISSUER = Kanboard
```

Extracted by the command: `grep -hE ': "\$\{(.*)\}"' latest/overlay/etc/entrypoint.d/*.sh | sed 's/: "\${//' | sed 's/:="/ = /' | sed 's/"}"$//' | sort | uniq`

### sqlite

```console
KANBOARD_DB_NAME = /var/lib/kanboard/database.sqlite3
```

### mysql

```console
KANBOARD_DB_HOSTNAME = mysql
KANBOARD_DB_NAME = kanboard
KANBOARD_DB_PASSWORD = root
KANBOARD_DB_PORT = 3306
KANBOARD_DB_SSL_CA =
KANBOARD_DB_SSL_CERT =
KANBOARD_DB_SSL_KEY =
KANBOARD_DB_USERNAME = root
KANBOARD_DB_VERIFY_SERVER_CERT =
```

### pgsql

```console
KANBOARD_DB_HOSTNAME = postgres
KANBOARD_DB_NAME = kanboard
KANBOARD_DB_PASSWORD = postgres
KANBOARD_DB_PORT = 5432
KANBOARD_DB_SSL_CA =
KANBOARD_DB_SSL_CERT =
KANBOARD_DB_SSL_KEY =
KANBOARD_DB_USERNAME = postgres
KANBOARD_DB_VERIFY_SERVER_CERT =
```

## Inherited environment variables

*  [webhippie/php-apache](https://github.com/dockhippie/php-apache#available-environment-variables)
*  [webhippie/apache](https://github.com/dockhippie/apache#available-environment-variables)
*  [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)

## Contributing

Generally we are following [conventional commits][commits] when we apply
changes. That way we are able to generate proper changelogs for every release.
Please use always pull requests to integrate new functionalities or to fix
issues.

For the release process we are following [semantic versioning][semver] which
clearly indicates if a new version just resolves bugs, includes new features or
even includes breaking changes.

After installing the tools via `mise install` as described above set up the
pre-commit hooks so they run automatically on every commit:

```console
pre-commit install --hook-type pre-commit --hook-type commit-msg
```

> `pre-commit` is managed by mise and will be available after `mise install`.

If you have changed something on the source you should simply commit following
the mentioned conventions:

```console
git checkout -b feat/new-feature
git add --all
git commit -m 'feat: added awesome new feature'
git push --set-upstream origin feat/new-feature
```

After pushing your changes into the Git repository you should create a pull
request on GitHub. If the pull request have been merged and everything built
fine it will also create automatically a new release at least once a week.

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
[mise]: https://mise.jdx.dev/
[mise-install]: https://mise.jdx.dev/getting-started.html
[commits]: https://www.conventionalcommits.org/en/v1.0.0/
[semver]: https://semver.org/
[upstream]: https://github.com/kanboard/kanboard
[parent]: https://github.com/dockhippie/php-apache
[dockerhub]: https://hub.docker.com/r/webhippie/kanboard/tags
[quayio]: https://quay.io/repository/webhippie/kanboard?tab=tags
[github]: https://github.com/dockhippie/kanboard
