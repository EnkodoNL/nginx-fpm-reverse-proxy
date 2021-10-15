#!/bin/sh
# replace hostname for kimai fpm

sed -i s/FPM_NGINX_HOST/$FPM_NGINX_HOST/g /etc/nginx/conf.d/default.conf
# Run nginx
exec /usr/sbin/nginx -g 'daemon off;'