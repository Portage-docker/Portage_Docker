#Initialize image php7.3-apache from docker
FROM php:7.3-apache
#Update the package apt, install libpng-dev for install mysqli gd and exif
RUN apt-get update && apt-get -y install libpng-dev curl unzip
#Install mysqli gd and exif, this is a extension for php. We need these extensions for run piwigo
RUN docker-php-ext-install mysqli gd exif
#Indicate the directory to work
WORKDIR /var/www/
# download piwigo and rename zip file in piwigo.zip
RUN curl -o piwigo.zip http://piwigo.org/download/dlcounter.php?code=latest
# Unzip file piwigo.zip
RUN unzip piwigo.zip
# Remove file piwigo.zip
RUN rm piwigo.zip
# Remove folder html
RUN rm -rf html
# Rename folder piwigo in html
RUN mv piwigo html
# Change authorization for the folder /var/www/html/, the -R is for recursive
RUN chmod 777 -R /var/www/html/
#Expose the port 80
EXPOSE 80
#Expose the port 443 for https
EXPOSE 443
