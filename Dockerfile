FROM nginx:alpine
LABEL description="Nginx alpine image built to reverse proxy requests to a PHP FPM server"

ADD start.sh /usr/local/bin/
ADD nginx_default.conf /etc/nginx/conf.d/default.conf

WORKDIR /etc/nginx

CMD ["/usr/local/bin/start.sh"]
