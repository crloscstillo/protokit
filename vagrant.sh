#!/usr/bin/env bash

echo "--- Setting up Vagrant ---"

echo "--- Updating packages list ---"
sudo apt-get update
sudo apt-get install -y apache2

echo "--- Enabling mod-rewrite ---"
sudo a2enmod rewrite

echo "--- Setting document root to public directory ---"
sudo rm -rf /var/www
sudo ln -fs /vagrant /var/www