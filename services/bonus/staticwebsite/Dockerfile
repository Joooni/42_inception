FROM debian:buster

RUN apt update
RUN apt install -y nginx

EXPOSE 3000

COPY ./conf/nginx.conf /etc/nginx/sites-available/default
COPY ./conf/index.html /var/www/html/index.html

CMD nginx -g 'daemon off;'