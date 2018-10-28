#!/bin/bash
version=$1

tar cvfz build/dokuwiki-$version.tgz ../dokuwiki/dokuwiki \
    ../dokuwiki/certbot \
    ../dokuwiki/dokusite.conf \
    ../dokuwiki/docker-compose.yml
