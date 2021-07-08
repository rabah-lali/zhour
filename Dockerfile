FROM php:7.2-apache



# Update the linux repository
RUN apt-get update

#Install MySQL extensions for PHP
RUN docker-php-ext-install pdo pdo_mysql mysqli

COPY src /var/www/html/
EXPOSE 80/tcp
EXPOSE 443/tcp
