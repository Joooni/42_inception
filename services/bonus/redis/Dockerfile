FROM debian:buster

RUN apt update
RUN apt install -y redis

EXPOSE 6379

COPY /tools/start.sh /var/www/start.sh

RUN chmod +x /var/www/start.sh

ENTRYPOINT ["sh", "/var/www/start.sh"]

#CMD ["redis-server", "--protected-mode no"]

#docker exec -it redis redis-cli monitor => should output 'OK'
