FROM composer:latest

WORKDIR /var/www/html

# Enables the possibility to call composer while ignoring warnings.
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]