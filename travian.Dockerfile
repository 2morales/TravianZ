FROM php:7.4-apache

# install mysqli extension
RUN docker-php-ext-install mysqli

# copy game files
COPY . /var/www/html

# copy apache files
COPY apache/apache2.conf /etc/apache2
COPY apache/000-default.conf /etc/apache2/sites-available/
