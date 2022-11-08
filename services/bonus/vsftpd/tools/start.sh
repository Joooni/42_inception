#!/bin/bash

if [ ! -f "/etc/vsftpd.conf.backup" ]; then

mkdir -p /var/run/vsftpds/empty

cerp /etc/vsftpd.conf /etc/vsftpd.conf.backup
mv /var/www/vsftpd.conf /etc/vsftpd.conf

adduser $FTP_USR --disabled-password
echo "$FTP_USR:$FTP_PWD" | /usr/sbin/chpasswd # &> /dev/null
chown -R $FTP_USR:$FTP_PWD /var/www/html/wordpress

#echo $FTP_USR | tee -a /etc/vsftpd.userlist &> /dev/null

fi

echo "FTP started on Port 21"