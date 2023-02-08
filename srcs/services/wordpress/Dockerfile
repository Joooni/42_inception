FROM debian:buster

RUN apt update
RUN apt install -y php7.3 php-mysqli php-fpm curl wget mariadb-client unzip

EXPOSE 9000

WORKDIR /var/www/

RUN wget https://wordpress.org/latest.zip
RUN unzip /var/www/latest.zip
RUN rm -f /var/www/latest.zip

RUN wget https://downloads.wordpress.org/plugin/redis-cache.2.0.22.zip
RUN unzip redis-cache.2.0.22.zip
RUN rm -rf redis-cache.2.0.22.zip

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d

COPY ./tools /var/www/

RUN chmod +x /var/www/start.sh

ENTRYPOINT ["sh", "/var/www/start.sh"]

CMD ["/usr/sbin/php-fpm7.3", "-F"]