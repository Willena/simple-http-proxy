FROM haproxy:alpine
MAINTAINER Andrew Taranik <me@pureclouds.net>

ADD haproxy.cfg.tmpl /usr/local/etc/haproxy/haproxy.cfg.tmpl
ADD init.sh /init.sh

EXPOSE 80
#Bad for security but dont have the time to change that
USER root
RUN apk add --no-cache gettext \
 && chmod +x /init.sh

CMD ["/init.sh"]
