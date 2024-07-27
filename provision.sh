# !/bin/bash

sudo apt-get update && sudo apt-get -y upgrade #Update and upgrade Packages
sudo apt-get -y install nginx curl wget git # Download packages
sudo git clone https://github.com/nangazaki/johnniewalker.git # Clone the repository
sudo cp -rf /vagrant/static-sites.conf /etc/nginx/conf.d/static-sites.conf # Move the static-sites.conf to /nginx/conf.d/ dir
sudo cp -rf johnniewalker/ /var/www/html # Move the site to /var/www/html dir
sudo systemctl restart nginx.service # Restart the nginx service