#!/bin/sh

export SSL_LINE=""

if [[ $SSL == "true" ]]
then
  export SSL_LINE="ssl verify none"
fi


envsubst </usr/local/etc/haproxy/haproxy.cfg.tmpl >/usr/local/etc/haproxy/haproxy.cfg
haproxy -f /usr/local/etc/haproxy/haproxy.cfg
