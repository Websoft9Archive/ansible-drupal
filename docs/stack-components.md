# Parameters

The Drupal deployment package contains a sequence software (referred to as "components") required for Drupal to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

### Drupal

Drupal installation directory: */data/wwwroot/drupal*  
Drupal configuration file: */data/wwwroot/drupal/web/sites/default/settings.php*   

### PHP

PHP configuration file: */etc/php.ini*  
PHP Modules configurations directory: */etc/php.d*

### Apache

Drupal on LAMP, the Web Server is Apache  

Apache vhost configuration file: */etc/httpd/conf.d/vhost.conf*    
Apache main configuration file: */etc/httpd/conf/httpd.conf*   
Apache logs file: */var/log/httpd*  
Apache module configuration file: */etc/httpd/conf.modules.d/00-base.conf*    

### Nginx

Drupal on LEMP, the Web Server is Nginx    

Nginx vhost configuration file: */etc/nginx/sites-available/default.conf*  
Nginx main configuration file: */etc/nginx/nginx.conf*  
Nginx logs file: */var/log/nginx/*

### MYSQL

MySQL installation directory: */usr/local/mysql*  
MySQL data directory: */data/mysql*  
MySQL configuration file: */etc/my.cnf*  

MySQL Web Management refer to [MySQL management](/admin-mysql.md)

### Docker

Docker root directory: */var/lib/docker*  
Docker image directory: */var/lib/docker/image*   
Docker daemon.json: please create it when you need and save to to the directory */etc/docker*   

###  phpMyAdmin

phpMyAdmin is a visual MySQL management tool, is installed based on docker.  

phpMyAdmin directory：*/data/apps/phpmyadmin*  
phpMyAdmin docker compose file：*/data/apps/phpmyadmin/docker-compose.yml* 

### Redis

Redis configuration file: */etc/redis.conf*  
Redis data directory: */var/lib/redis*  
Redis logs file: */var/log/redis/redis.log*

## Ports

Open or close ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/tech-instance.html)** of your Cloud Server to decide whether the port can be accessed from Internet.  

You can run the cmd `netstat -tunlp` to check all related ports.  

The following are the ports you may use:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| MySQL | 3306 | Remote connect MySQL | Optional |
| HTTP | 80 | HTTP requests for Drupal | Required |
| HTTPS | 443 | HTTPS requests Drupal | Optional |
| phpMyAdmin | 9090 | HTTP request for phpMyAdmin | Optional |

## Version

You can see the version from product page of Marketplace. However, after being deployed to your server, the components will be automatically updated, resulting in a certain change in the version number. Therefore, the exact version number should be viewed by running the command on the server:

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# PHP Version
php -v

# List Installed PHP Modules
php -m

# Apache version on Centos
httpd -v

# Apache version on Ubuntu
apache2 -v

# List Installed Apache Modules
apachectl -M

# Nginx version
nginx -v

# List Installed Nginx Modules
nginx -V

# MySQL version:
mysql -V

# Redis version
redis-server -v

# Docker version:
docker -v
```
