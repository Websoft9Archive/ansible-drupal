# Update & Upgrade

Updates and upgrades are one of the maintenance tasks for sytem. Programs that are not upgraded for a long time, like buildings that are not maintained for a long time, will accelerate aging and gradually lose functionality until they are unavailable.

You should know the differences between the terms **Update** and **Upgrade**([Extended reading](https://support.websoft9.com/docs/faq/tech-upgrade.html#update-vs-upgrade))
- Operating system patching is **Update**, Ubuntu16.04 to Ubuntu18.04 is **Upgrade**
- MySQL5.6.25 to MySQL5.6.30 is **Update**, MySQL5.6 to MySQL5.7 is **Upgrade**

For Drupal maintenance, focus on the following two Update & Upgrade jobs

- Sytem update(Operating System and Running Environment) 
- Drupal upgrade 

## System Update

Run an update command to complete the system update:

``` shell
#For Centos&Redhat
yum update -y

#For Ubuntu&Debian
apt update && apt upgrade -y
```
> This deployment package is preconfigured with a scheduled task for automatic updates. If you want to remove the automatic update, please delete the corresponding Cron

## Drupal Upgrade

Drupal don't have online Upgrade function, but Drupal have development plan.  

You should kown that manual upgrade is very difficult

1. Log in Drupal, you can see the upgrade reminder if there have latest version of Drupal
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-update-websoft9.png)  

2. Follow the prompts to manually complete the Drupal kernel update

> More details about upgrade, please refer to [Drupal8 Upgrade](https://www.drupal.org/docs/8/update)