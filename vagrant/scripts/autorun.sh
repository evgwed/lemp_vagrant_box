#!/bin/bash

sudo rm -rf /etc/nginx/sites-enabled/*
sudo cp /vagrant/config/nginx/* /etc/nginx/sites-enabled/

sudo cp /vagrant/config/php-fpm/php.ini /etc/php/7.1/fpm/php.ini
sudo cp /vagrant/config/php-fpm/php-fpm.conf /etc/php/7.1/fpm/php-fpm.conf
sudo cp /vagrant/config/php-fpm/pool.d/www.conf /etc/php/7.1/fpm/pool.d/www.conf

service nginx restart
service php7.1-fpm restart
