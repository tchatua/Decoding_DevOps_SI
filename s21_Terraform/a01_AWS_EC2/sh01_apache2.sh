#!/bin/bash
set -e

# Update packages
sudo apt update -y

# Install required packages
sudo apt install -y wget unzip apache2

# Start and Enable Apache
sudo systemctl start apache2
sudo systemctl enable apache2

# Download template
cd /tmp
wget -O website.zip https://www.tooplate.com/zip-templates/2117_infinite_loop.zip

# Extract template
unzip -o website.zip

# Clear default Apache page
sudo rm -rf /var/www/html/*

# Copy website files
sudo cp -r /tmp/2117_infinite_loop/* /var/www/html/

# Set permissions
sudo chown -R www-data:www-data /var/www/html

# Restart Apache
sudo systemctl restart apache2