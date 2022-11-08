FROM debian:buster

RUN apt update
RUN apt install -y nginx openssl

EXPOSE 443

COPY ./conf/nginx.conf /etc/nginx/sites-enabled/default
COPY ./tools/start.sh /var/www

RUN /var/www/start.sh

CMD nginx -g 'daemon off;'