#!/bin/bash
# Taken from https://www.humankode.com/ssl/how-to-set-up-free-ssl-certificates-from-lets-encrypt-using-docker-and-nginx

site=$1
email=$2
APPDIR="/home/nuxion/Proyects/dokuwiki"


docker run -it --rm \
-v $APPDIR/certbot/letsencrypt:/etc/letsencrypt \
-v $APPDIR/certbot/lib:/var/lib/letsencrypt \
-v $APPDIR/dokuwiki:/data/letsencrypt \
-v $APPDIR/certbot/log:/var/log/letsencrypt \
certbot/certbot \
certonly --webroot \
--webroot-path=/data/letsencrypt \
--staging \
--register-unsafely-without-email --agree-tos \
-d $site 
