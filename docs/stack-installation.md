# Initial Installation

If you have completed the Drupal deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Drupal

## Drupal Installation Wizard

1. Using local Chrome or Firefox to visit the URL *https://domain* or *https://Internet IP*, start to install  

2. Choose a language, go to next step 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/dp01.png)

3. Select an installation profile 
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/dp02.png)

3. Then configure the database connection information([Don't know password?](/stack-accounts.md#mysql))
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/dp03.png)

5. Wait for installing
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/dp04.png)

6. Set your administrator account for Drupal
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/dp05.png)
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/dp06.png)

7. Installed successfully
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/dp07.png)

> Refer to [Drupal Community Guides](https://www.drupal.org/documentation) to get more details

## Q&A

#### I can't visit the start page of Drupal?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Which database does this Drupal package use?

MySQL

#### Can I use Cloud database for Drupal?

Yes