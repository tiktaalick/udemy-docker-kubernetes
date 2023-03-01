FROM composer:latest
 
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel 

WORKDIR /var/www/html
 
# Enables the possibility to call composer while ignoring warnings.
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]