FROM debian:buster

ARG FTP_USR \
	FTP_PWD

RUN apt update
RUN apt install -y vsftpd

EXPOSE 21

COPY conf/vsftpd.conf /var/www/vsftpd.conf
COPY tools/start.sh /var/www/start.sh

RUN bash /var/www/start.sh

CMD ["usr/sbin/vsftpd", "/etc/vsftpd.conf"]