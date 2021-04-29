FROM php:7.3-apache

RUN apt-get update && apt-get -y install curl unzip libpng-dev && \
docker-php-ext-install mysqli gd exif

RUN cd /var/www && curl -o piwigo.zip http://piwigo.org/download/dlcounter.php?code=latest && \
unzip piwigo.zip && rm piwigo.zip && rm -rf html && mv piwigo html && \
sed 's/# The directory where shm and other runtime files will be stored./ServerName localhost/' /etc/apache2/apache2.conf

RUN apache2ctl restart

WORKDIR /var/www/html

EXPOSE 80
