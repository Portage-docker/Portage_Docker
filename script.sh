#!/bin/sh

# Créer les variables d'environnements pour la connexion à la BdD piwigo
echo TAG_USER=piwigo > .env
echo TAG_PASSWORD=piwigo >> .env
echo TAG_DATABASE=piwigo >> .env

# Génère des certificats pour la connexion https
cd cert
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout privateKey.key -out certificate.crt -subj "/C=FR/ST=France/L=France/O=Simplon/OU=Simplon/CN=piwigo/emailAddress=piwigo@piwigo.com"

# Pour build
cd ..
docker build -t piwigo-docker ./

# Pour up l'image
docker-compose up