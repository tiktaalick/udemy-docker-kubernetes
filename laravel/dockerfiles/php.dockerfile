FROM php:7.4-fpm-alpine

# This is a standard folder on webservers to serve your website from
WORKDIR /var/www/html

# Installs the extra dependencies pdo and pdo_mysql
RUN docker-php-ext-install pdo pdo_mysql


