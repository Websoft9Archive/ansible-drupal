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

Drupal provides a very user-friendly upgrade (update) portal

> Please completed backup of Server before any upgrade of Drupal

1. Log in Drupal backend, you can see the upgrade reminder when have latest version
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-bkupgradets-websoft9.png)  

2. Go to the upgrade interface, check the upgrade requirement and start to upgrade
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-update003-websoft9.png)

3. Upgrading, wait for it
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-update004-websoft9.PNG)

4. Upgrade successfully
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-update005-websoft9.PNG)

5. You can upgrade extension of Drupal also
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-bkextupgrade-websoft9.png)