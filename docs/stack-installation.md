# Initial Installation

If you have completed the Drupal deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Drupal

## Drupal Installation Wizard

1. Using local Chrome or Firefox to visit the URL *https://domain* or *https://Internet IP*, start to install  

2. Set the site information and Super User Account Details,then Cick “next” button
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-installconf-websoft9.png)

3. Then configure the database connection information([Don't know password?](https://support.websoft9.com/docs/lamp/stack-accounts.html#mysql))
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-installdb-websoft9.png)

4. Click the "Next" button when complete the Database Configuration,the wizard will start to install.
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-installss-websoft9.png)

5. Click "Extra steps: Install languages" to install extra language 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-installlanguages-websoft9.png)

6. Follow the prompts to set whether to enable the multi-language feature of the website and set the default front-back language

7. Click the “Remove installation folder” button

8. Log in Drupal backend (URL is *http://domain/administrator*)
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-login-websoft9.png)

9. You can use the Drupal backend to setup your site now
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-backend-websoft9.png)

> Refer to [Drupal admin_manual](https://docs.joomla.org/Main_Page) to get more details

## Q&A

#### I can't visit the start page of Drupal?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Which database does this Drupal package use?

MySQL

#### Can I use Cloud database for Drupal?

Yes

#### Drupal not the latest version?

Completed the Drupal initial installation, the login backen can be updated online to the latest version with one click.