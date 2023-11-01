# nginx-fpm-reverse-proxy

A simple reverse proxy to forward requests on to a PHP FPM Server.

Built for use in any FPM project for any PHP FPM server.

## Quickstart

    docker run \
      -ti \
      --rm \
      -name nginx-fpm-reverse-proxy \
      -e ROOT_DIRECTORY=/opt/app \
      -e FPM_NGINX_HOST=fpm \
      -e FPM_NGINX_PORT=9000 \
      -v ${pwd}:/opt/kimai \
      -p 8001:80 \
    enkodo/nginx-fpm-reverse-proxy

## Building

There is no build time customisation:

    docker build .

## Runtime settings

This instance of nginx listens on port `80` and forwards php requests to the env var FPM_NGINX_HOST with env var for port FPM_NGINX_PORT (defaults to 9000). The server name is `nginx`

