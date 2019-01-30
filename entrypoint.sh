#!/bin/sh
set -e

cp -R /tmp/.ssh /root/.ssh
chmod 700 /root/.ssh
chmod 644 `ls /root/.ssh/*.pub`
chmod 600 `ls /root/.ssh/*_rsa`

exec "$@"
