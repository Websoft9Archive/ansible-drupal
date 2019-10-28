## Drupal
drupal8.x 版本以上，安装完后出提示一个错误 *Protecting against HTTP HOST Header attacks* 错误，解决方法如下：
1. 通过 WinSCP 远程连接上服务器，进入 */data/wwwroot/drupal/sites/default* 目录，将 settings.php 文件下载到本地；
2. 打开文件，找到如下图所示的配置段：
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/drupal/drupal-settings-1-websoft9.jpg)
3. 修改为如下图所示的配置（域名请根据实际情况更改，注意红框标注的注释符）：
   ![](http://libs.websoft9.com/Websoft9/DocsPicture/zh/drupal/drupal-settings-2-websoft9.jpg)
4. 重新上传至原目录下；
5. 执行 *chown -R apache: /data/wwwroot/drupal* 命令，刷新页面，错误提示消失。