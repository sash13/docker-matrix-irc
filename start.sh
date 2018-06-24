#!/bin/sh

if [ ! -z $PREFIX ]
then
  ip route add local $PREFIX dev lo
fi

exec /usr/local/bin/node app.js -c /config/irc-config.yaml -f /config/registration_file.yaml -p 9999:9999 -p 1113:1113
