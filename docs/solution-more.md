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


## Drupal languages

Drupal supports multiple languages. Here are the main steps to install and set up multiple languages:

1. Log in Drupal, go to【Extension】>【Language(s)】>【installed】, install the languages you want
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-bkinstalllan-websoft9.png)

2. Then set your default language of Drupal Site or Administrator
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-bkenablelang-websoft9.png)

## Drupal extension

[Drupal! Extensions Directory™](https://extensions.joomla.org/) provided lots of extensions for you:

1. Log in Drupal
2. Go to【Extensions】>【Install】>【Install from Web】and search the extensions
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-bkinstallext-websoft9.png)
3. Install them online

## Drupal install template

You can upload your template package to install it:

1. Prepare your template (.zip file)

2. Log in Drupal backend

3. Open 【Extensions】>【Install】, select the tab【Upload package file】to install template
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-upload_install.png)

4. When have completed the installation, go to 【Extensions】>【Templates】>【Styles】, enable your template as default template
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-bkenabletemplate-websoft9.png)

> Some template zip package may have the Drupal source code, at this time **Install template=Install Drupal**

## Drupal Cache

Drupal backend have cache management function, refer to this picture:

![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-opencache-websoft9.png)

## Drupal reset administrator password

If you don't remember your administrator password, please refer to the docs [here](https://docs.joomla.org/How_do_you_recover_or_reset_your_admin_password%3F/) to reset it