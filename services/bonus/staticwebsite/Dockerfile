FROM debian:buster

RUN apt update
RUN apt install -y nginx

EXPOSE 3000

COPY ./conf/nginx.conf /etc/nginx/sites-available/default
COPY ./conf/index.html /var/www/html/
COPY ./content/confusedgui.png /var/www/html/content/

CMD nginx -g 'daemon off;'