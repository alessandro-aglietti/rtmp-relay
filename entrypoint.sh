#!/bin/bash

set -e

echo "$(date) $(pwd)/entrypoint.sh: START"

apt-get update

apt-get install -y libnginx-mod-rtmp

cat /docker-entrypoint.d/100-rtmp.conf >> /etc/nginx/nginx.conf

mkdir -p /var/www/html/stream

chown -R www-data:www-data /var/www/html/stream

exec "$@"
