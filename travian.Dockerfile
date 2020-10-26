FROM php:7.4-apache

# copy game files
COPY . /var/www/html

# copy apache files
COPY apache/apache2.conf /etc/apache2
COPY apache/000-default.conf /etc/apache2/sites-available/
