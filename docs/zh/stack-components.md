# 参数

Drupal 预装包包含 Drupal 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

### Drupal

Drupal 安装目录： */data/wwwroot/drupal*  
Drupal 配置文件： */data/wwwroot/drupal/web/sites/default/settings.php*  

> Drupal 配置文件中包含数据库连接信息，更改了 MySQL 数据库账号密码，此处也需要对应修改

### PHP

PHP 配置文件： */etc/php.ini*  
PHP Modules 配置文件目录： */etc/php.d*

### Apache

Drupal on LAMP, the Web Server is Apache  

Apache 虚拟主机配置文件：*/etc/httpd/conf.d/vhost.conf*  
Apache 主配置文件： */etc/httpd/conf/httpd.conf*  
Apache 日志文件： */var/log/httpd*  
Apache 模块配置文件： */etc/httpd/conf.modules.d/00-base.conf*

### Nginx

Drupal on LEMP, the Web Server is Nginx  

Nginx 虚拟主机配置文件：*/etc/nginx/sites-available/default.conf*  
Nginx 主配置文件： */etc/nginx/nginx.conf*  
Nginx 日志文件： */var/log/nginx/*

### MYSQL

MySQL 安装路径: */usr/local/mysql*  
MySQL 数据文件 */data/mysql*  
MySQL 配置文件: */etc/my.cnf*    
MySQL 可视化管理地址: *http://服务器公网IP/phpmyadmin*，用户名和密码请见 [账号密码](/zh/stack-accounts.md) 章节。

### phpMyAdmin

phpMyAdmin 是一款可视化 MySQL 管理工具，在本项目中它基于 Docker 安装。  

phpMyAdmin directory：*/data/apps/phpmyadmin*  
phpMyAdmin docker compose file：*/data/apps/phpmyadmin/docker-compose.yml* 

### Docker

Docker 根目录: */var/lib/docker*  
Docker 镜像目录: */var/lib/docker/image*   
Docker daemon.json 文件：默认没有创建，请到 */etc/docker* 目录下根据需要自行创建   

### Redis

Redis 配置文件： */etc/redis.conf*  
Redis 数据目录： */var/lib/redis*  
Redis 日志文件： */var/log/redis/redis.log*  
Redis 默认数据库： *redis*  


## 端口号

在云服务器中，通过 **[安全组设置](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** 来控制（开启或关闭）端口是否可以被外部访问。 

通过命令`netstat -tunlp` 看查看相关端口，下面列出可能要用到的端口：

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| HTTP | 80 | 通过 HTTP 访问 Drupal | 必须 |
| HTTPS | 443 | 通过 HTTPS 访问 Drupal | 可选 |
| TCP | 3306 | 远程连接 MySQL | 可选 |
| TCP | 9090 | HTTP 访问 phpMyAdmin | 可选 |

## 版本号

组件版本号可以通过云市场商品页面查看。但部署到您的服务器之后，组件会自动进行更新导致版本号有一定的变化，故精准的版本号请通过在服务器上运行命令查看：

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

# Docker version
docker -v
```
