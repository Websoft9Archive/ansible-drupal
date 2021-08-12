# 故障处理

此处收集使用 Drupal 过程中最常见的故障，供您参考

> 大部分故障与云平台密切相关，如果你可以确认故障的原因是云平台造成的，请参考[云平台文档](https://support.websoft9.com/docs/faq/zh/tech-instance.html)

#### 初始化过程中的 【安装翻译】这一步骤总是报错？

问题原因：安装翻译过程中需要从网络上下载翻译文件，可能会有网络超时导致错误  
解决方案：重试多次，直至成功


#### Drupal 重定向错误？

多语言下，重定向错误比较常见。例如：打开您的 Drupal 中文版会出现重定向错误

处理办法：分析网站根目录下的 `.htaccess` 文件，看看有没有死循环规则

#### 修改了数据库密码 Drupal 不能访问？

若已完成 Drupal 安装向导，再通过 phpMyAdmin 修改数据库密码，Drupal 就会连不上数据库  

需要修改 [Drupal 配置文件](/zh/stack-components.html#drupal) 对应的数据库 password 参数即可。

#### Apache httpd 服务无法启动？

请通过分析日志文件定位原因： */var/log/httpd*

#### 数据库服务无法启动

数据库服务无法启动最常见的问题包括：磁盘空间不足，内存不足，配置文件错误。  
建议先通过命令进行排查  

```shell
# 查看磁盘空间
df -lh

# 查看内存使用
free -lh

# 查看服务状态和日志
systemctl status mysql
journalctl -u mysql
```

#### Drupal 状态报告中有错误怎么办？（见下图）

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/drupal/drupal-status-websoft9.png)

请根据提示完成系统升级或设置，不过这个设置不是必须的，此“错误”称之为“警告”更为合适

#### Drupal8.x 版本以上，安装完后提示一个错误 **Protecting against HTTP HOST Header attacks**

解决方法如下：

1. 通过 WinSCP 远程连接上服务器，进入 */data/wwwroot/drupal/sites/default* 目录，将 settings.php 文件下载到本地；

2. 打开文件，找到如下图所示的配置段：
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/drupal/drupal-settings-1-websoft9.jpg)

3. 修改为如下图所示的配置（域名请根据实际情况更改，注意红框标注的注释符）：
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/drupal/drupal-settings-2-websoft9.jpg)

4. 重新上传至原目录下；

5. 执行 *chown -R apache: /data/wwwroot/drupal* 命令，刷新页面，错误提示消失。
   
> 官方参考链接：https://www.drupal.org/docs/8/install/trusted-host-settings
