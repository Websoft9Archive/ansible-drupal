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
2. 下载 [SMTP Authentication Support](https://www.drupal.org/project/smtp)（Drupal 默认没有安装 SMTP 模块），在线安装
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/drupal/drupal-installsmtp-websoft9.png)

3. 打开：【管理】>【扩展】，找到【SMTP Authentication Support】，点击【安装】按钮
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/drupal/drupal-setsmtp-websoft9.png)

3. 打开：【管理】>【配置】，找到【SMTP Authentication Support】，配置它
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/drupal/drupal-setsmtp-websoft9.png)

5. 填写准确的 SMTP 设置项信息
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/drupal/drupal-smtp-4-websoft9.png)
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/drupal/drupal-smtp-5-websoft9.png)

    * 发送模式选择“SMTP”，加密方式选择“SSL/TLS”;
    * 输入发送方邮箱地址；
    * 认证方式选择“登录”，并勾选“需要认证”选项；
    * 输入SMTP服务器地址和SMTP服务器的端口号；
    * 输入和发件人邮箱一致的邮箱地址；
    * 输入该邮箱地址的SMTP服务的授权码或密码；
    * 存储凭据；

3. 设置完成后，勾选【启用调试】，将发出测试邮件
     

More SMTP Service(Gmail, Hotmail, QQ mail, Yahoo mail, SendGrid and so on)  settings or Issues with SMTP, please refer to Websoft9's *[SMTP Guide](https://support.websoft9.com/docs/faq/tech-smtp.html)*