#!/bin/bash

# Remplacez ces valeurs par votre domaine et votre email
DOMAIN="BcIoT.com"
EMAIL="safidytiavina21@gmail.com"

# Obtenez les certificats SSL avec Certbot
sudo certbot certonly --manual --preferred-challenges dns -d $DOMAIN -d www.$DOMAIN --email $EMAIL --agree-tos --no-eff-email

# Copier les certificats dans le répertoire de votre projet pour les utiliser dans le Dockerfile
cp -r /etc/letsencrypt ./nginx/letsencrypt