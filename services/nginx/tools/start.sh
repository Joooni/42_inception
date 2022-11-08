#!/bin/bash

# openssl to create certificate
# -x509
#	self-signed certificate instead of request
# -nodes
#	non-encrypted private key
# -days
#	length of certificate
# -newkey rsa:nbrbits
#	create a new RSA key with nbr of bits specified
# -keyout
#	file to write key to
# -out
#	specify the output file name for the certificate
# -subj
#	provides information to subject field of the request form
if [ ! -f /etc/ssl/certs/nginx.crt ]; then
echo "Nginx: setup";
openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
		-keyout /etc/ssl/private/nginx.key \
		-out /etc/ssl/certs/nginx.crt \
		-subj "/C=DE/ST=Niedersachsen/L=Braunschweig/O=inceptionBRATAN/CN=jsubel.42.fr";
echo "Nginx: setup done!";
fi

nginx -g 'daemon off;'