# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

绑定域名的前置条件是：已经完成域名解析（登录域名控制台，增加一个A记录指向服务器公网IP）  

完成域名解析后，从服务器安全和后续维护考量，需要完成**域名绑定**：

Drupal 域名绑定操作步骤：

1. 使用 SFTP 工具登录云服务器
2. 修改 [虚拟机主机配置文件](/zh/stack-components.html#apache)，将其中的域名相关的值
   ```text
   #### Drupal(LAMP) bind domain #### 

     <VirtualHost *:80>
     ServerName  www.mydomain.com # 修改成您的实际域名
     DocumentRoot "/data/wwwroot/joomla"
     ...
     
   #### Drupal(LNMP) bind domain #### 

     server {
      listen 80;
      server_name joomla.example.com; # 修改成您的实际域名
     ...

   ```
3. 保存配置文件，[重启服务](/zh/admin-services.html#apache)

## Drupal 多语言

Drupal 支持多语言，下面是安装并设置多语言的主要步骤：

1. 登录 Drupal，在后台 【扩展管理】>【语言管理】中安装语言
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/joomla/joomla-bkinstalllan-websoft9.png)

2. 然后设置前后台的默认语言
  ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/joomla/joomla-bkenablelang-websoft9.png)

## Drupal 扩展

Drupal 后台集成了 [Drupal! Extensions Directory™](https://extensions.joomla.org/) 大量的扩展，下面介绍如何安装它们

1. 登录 Drupal
2. 打开【扩展管理】>【安装扩展】，建议选择【从扩展目录安装】的方式在线寻找扩展
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/joomla/joomla-bkinstallext-websoft9.png)
3. 安装你所需的扩展

## Drupal 安装模板

Drupal 的模板安装，主要通过上传模板安装包的方式实现：

1. 准备好你的模板安装包（一般是 .zip 文件）

2. 登录 Drupal 后台

3. 打开 【扩展管理】>【安装扩展】，选择【上传安装包文件】的方式上传你的模板，开始安装
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/joomla/joomla-bkuploadext-websoft9.png)

4. 安装后，打开【扩展管理】>【模板管理】>【风格管理】，找到已经安装的模板，启用它
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/joomla/joomla-bkenabletemplate-websoft9.png)

> 有些模板提供商，提供的模板压缩包中包含 Drupal 内核文件，这种情况下 **安装模板=安装Drupal**

## Drupal Cache

Drupal 后台提供了缓存管理功能，参考下图：

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/joomla/joomla-cache-websoft9.png)

## Drupal 重置管理员密码

如果忘记了管理员密码，可以参考 [此处](https://docs.joomla.org/How_do_you_recover_or_reset_your_admin_password%3F/zh-cn) 重置密码