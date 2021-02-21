# More

Each of the following solutions has been proven to be effective and we hope to be helpful to you.

## Domain binding

The precondition for **Domain binding** is have completed the **Domain resolution** for Drupal Instance.

From the perspective of server security and subsequent maintenance considerations, the **Domain Binding** step cannot be omitted.

Drupal domain name binding steps:

1. Connect your Cloud Server
2. Modify [vhost configuration file](/stack-components.md#apache), change the domain name item for you
   ```text
   #### Drupal (LAMP) bind domain #### 

     <VirtualHost *:80>
     ServerName joomla.mydomain.com # modify it for you
     DocumentRoot "/data/wwwroot/Drupal"
     ...
     
   #### Drupal (LEMP) bind domain #### 

     server {
      listen 80;
      server_name joomla.example.com; # modify it for you
     ...

   ```
3. Save it and restart [Web Service](/admin-services.md#apache)


## Drupal change domain

You can change the domain of Drupal by the following steps:

1. Complete the new **Domain resolution and Domain binding**
2. Check [Drupal configuration file](/zh/stack-components.html#drupal) related to domain
3. Check `.htaccess` file in the Drupal root directory related to domain
4. [Restart PHP-FPM service](/zh/admin-services.html#php-fpm)

## Drupal languages

Drupal supports multiple languages. Here are the main steps to install and set up multiple languages:

1. Log in Drupal, go to【Manage】>【Configuration】>【Regional and Language】, install your languge
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-addlanguage-websoft9.png)

2. After installing a new language, set the default language according to actual needs.

## Drupal install Modules

[Drupal Modules](https://www.drupal.org/project/project_module) have lots of Modules, below is the step for you to install it

1. Visit [Drupal Modules](https://www.drupal.org/project/project_module) website, and search the Module you want to use
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-searchformodule-websoft9.png)

2. Get the dowload URL of your Module
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-dlmodule-websoft9.png)

3. Log in Drupal,open the Extend installation interface  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-extend-websoft9.png)

4. Go to【Mange】>【Extend】>【Install Extend】, input the URL for Extend installation  
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-install_manager_module-websoft9.png)

5. Install successfully
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-moduleinstalled-websoft9.png)

6. At last, enable the Theme you have installed online
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-enablemodule-websoft9.png)

## Drupal install Themes

[Drupal Themes](https://www.drupal.org/project/project_theme) have lots of Themes, below is the step for you to install it

1. Visit [Drupal Themes](https://www.drupal.org/project/project_theme) website, and search the Theme you want to use
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/drupal/drupal-searchthemes-websoft9.png)

2. Get the dowload URL of your Theme
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/drupal/drupal-themesurl-websoft9.png)

3. Open【Mange】>【Extend】>【Install Extend】, input the URL for Extend installation 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-install_manager_module-websoft9.png)

4. Then, open【Appearance】 page, enable the Theme you have installed online
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-completeinstall-theme-websoft9.png)

> Some Themes's zip package may have the Joomla core, at this time **Install Theme= Install Drupal**

## Drupal reset password

If you don't remember your administrator password, please refer to the docs [here]((https://www.drupal.org/node/44164)) to reset it