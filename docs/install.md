# Installing docker

## PHP-FPM docker
PHP-FPM image:
7.0.32-fpm-alpine3.7 
Bugs con versiones posteriores a la 7.0.32: 
[this topic](https://forum.dokuwiki.org/thread/16300)

A tener en cuenta php-fpm escribe los archivos con el id 82 del usuario www-data,
por lo cual de forma temporal realizo un chown 82:82 de dokuwiki.

## Self signed Certificates
```
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout mysitename.key -out mysitename.crt
```
## Nginx docker
Se modifica la imagen de docker para poder hacer coincidir el id de la image php-fpm con la del usuario de nginx.


