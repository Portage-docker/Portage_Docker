#Initialize image php7.3-apache from docker
FROM php:7.3-apache
#Update the package apt, install libpng-dev for install mysqli gd and exif
RUN apt-get update && apt-get -y install libpng-dev
#Install mysqli gd and exif, this is a extension for php. We need these extensions for run piwigo
RUN docker-php-ext-install mysqli gd exif
#copy the repository piwigo in /var/www/html/
COPY piwigo/ /var/www/html/
# Change authorization for the folder /var/www/html/, the -R is for recursive
RUN chmod 777  -R /var/www/html/
#Indicate the directory to work
WORKDIR /var/www/html/
#Expose the port 80
EXPOSE 80
#Expose the port 443 for https
EXPOSE 443
