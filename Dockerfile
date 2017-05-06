FROM webhippie/php-caddy:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

VOLUME ["/var/lib/kanboard", "/srv/www/vendor"]

ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["/bin/s6-svscan", "/etc/s6"]
EXPOSE 8080
WORKDIR /srv/www

RUN apk update && \
  apk add \
    git \
    sqlite \
    php7-ldap && \
  rm -rf \
    /var/cache/apk/*

ENV KANBOARD_VERSION 1.0.42
ENV KANBOARD_TARBALL https://github.com/kanboard/kanboard/archive/v${KANBOARD_VERSION}.tar.gz

RUN curl -sLo - \
  ${KANBOARD_TARBALL} | tar -xzf - --strip 1 -C /srv/www && \
  chown -R caddy:caddy /srv/www

ADD rootfs /
