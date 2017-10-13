#!/bin/bash

# Git
sudo apt-get install git-core -y
git config --global color.ui true
echo '.*swp' > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# htop
sudo apt-get install htop -y

# Vim
sudo apt-get install vim -y

# Install nginx
sudo apt-get install -y nginx

# Install mysql
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
sudo apt-get install -y mysql-server

# Install php-fpm
sudo add-apt-repository -y ppa:ondrej/php && sudo apt-get update
sudo apt-get install -y php7.1 php7.1-cli php7.1-fpm php7.1-mysql php7.1-curl php-memcached php7.1-dev php7.1-mcrypt php7.1-sqlite3 php7.1-mbstring php7.1-zip php7.1-xml php7.1-intl php-xdebug php7.1-gd
sudo apt-get install -y curl

# Composer
curl -Ss https://getcomposer.org/installer | php
sudo mv composer.phar /usr/bin/composer

# php.ini
sed -i.bak 's/^;cgi.fix_pathinfo.*$/cgi.fix_pathinfo = 1/g' /etc/php/7.1/fpm/php.ini
sudo rm /etc/nginx/sites-enabled/default
sudo rm /etc/nginx/sites-available/default

# Restart servers
service nginx restart
service php7.1-fpm restart