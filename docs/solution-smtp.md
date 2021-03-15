# SMTP

Sending mail is a common feature for Drupal. After a large number of user practice feedback, only one way is recommended, that is, using the **third-party STMP service** to send the email.

> Do not try to install **Sendmail** or other Mail server software on your Cloud Server for sending mail, because it is very difficulty in maintenance.

Follow is the sample using **SendGrid's SMTP Service** to configure sending mail for Drupal:

1. Log in SendGrid console, prepare your SMTP settings like the follow sample
   ```
   SMTP host: smtp.sendgrid.net
   SMTP port: 25 or 587 for unencrypted/TLS email, 465 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9smpt
   SMTP password: #fdfwwBJ8f    
   ```
2. Copy [SMTP Authentication Support](https://www.drupal.org/project/smtp) plugin URL and install it
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-installsmtp001-websoft9.png)

3. Open:【Manage】>【Extend】, select【SMTP Authentication Support】and click 【install】 button
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-installsmtp002-websoft9.png)

4. Open:【Manage】>【Configuration 】, click【SMTP Authentication Support】
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-setsmtp001-websoft9.png)

5. Set the SMTP configuration items
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/drupal/drupal-setsmtp002-websoft9.png)

6. Select【Enable debugging】when complete setting and will send test mail
     

More SMTP Service(Gmail, Hotmail, QQ mail, Yahoo mail, SendGrid and so on)  settings or Issues with SMTP, please refer to Websoft9's *[SMTP Guide](https://support.websoft9.com/docs/faq/tech-smtp.html)*