FROM debian:buster

RUN apt update
RUN apt install -y nginx openssl

EXPOSE 443

COPY ./conf/nginx.conf /etc/nginx/sites-available/default
COPY ./tools/start.sh /var/www/

RUN chmod +x /var/www/start.sh

CMD bash /var/www/start.sh

# CMD nginx -g 'daemon off;'