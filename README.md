# Vagrant LEMP box

A basic LEMP (Linux, Nginx, MySQL, and PHP) Vagrant setup.
Uses the ubunty/trusty64 Vagrant box for the official Ubuntu Server 14.04 LTS (Trusty Tahr) builds.

## Getting started

To get up and running with this environment, you first need to have Virtualbox and Vagrant installed on your system.

If you don't already have those, visit the downloads pages below and follow the instructions for your operating system:

* [Virtualbox Downloads](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant Downloads](https://www.vagrantup.com/downloads.html)

1. `mv vagrant/Vagrantfile.example vagrant/Vagrantfile`
2. Set configs in `vagrant/config`
3. `vagrant up`
4. Add '/etc/hosts` in your local machine `192.168.100.102 test.app`
5. Open in Browser link `http://test.app/`

## Resources

* [Sitepoint - Vagrantfile Explained: Setting Up and Provisioning with Shell](https://www.sitepoint.com/vagrantfile-explained-setting-provisioning-shell/)
* [GitHub Repo - Vagrant Base Config](https://github.com/sitepoint-editors/vagrant-base-config)
* [Digital Ocean - How To Install Linux, nginx, MySQL, PHP (LEMP) stack on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-ubuntu-14-04)
* [How To Upgrade to PHP 7 on Ubuntu 14.04](https://www.digitalocean.com/community/tutorials/how-to-upgrade-to-php-7-on-ubuntu-14-04)