#!/bin/sh

# if FPM_NGINX_HOST is not set, set it to default
if [ -z "$FPM_NGINX_HOST" ]; then
    FPM_NGINX_HOST="fpm"
fi

# if FPM_NGINX_PORT is not set, set it to default
if [ -z "$FPM_NGINX_PORT" ]; then
    FPM_NGINX_PORT="9000"
fi

# if ROOT_DIRECTORY is not set, set it to default
if [ -z "$ROOT_DIRECTORY" ]; then
    ROOT_DIRECTORY="/var/www/html"
fi


# replace hostname for fpm
sed -i s/FPM_NGINX_HOST/$FPM_NGINX_HOST/g /etc/nginx/conf.d/default.conf
# replace port for fpm
sed -i s/FPM_NGINX_PORT/$FPM_NGINX_PORT/g /etc/nginx/conf.d/default.conf
# replace root directory
sed -i s/ROOT_DIRECTORY/$ROOT_DIRECTORY/g /etc/nginx/conf.d/default.conf

# Run nginx
exec /usr/sbin/nginx -g 'daemon off;'
