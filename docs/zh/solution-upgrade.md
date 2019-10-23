# 更新升级

网站技术日新月异，**更新升级**是维护工作之一，长时间不升级的程序，就如长时间不维护的建筑物一样，会加速老化、功能逐渐缺失直至无法使用。  

这里注意更新与升级这两词的差异（[延伸阅读](https://support.websoft9.com/docs/faq/zh/tech-upgrade.html#更新-vs-升级)），例如：  

- 操作系统打个补丁常称之为**更新**，Ubuntu16.04 变更为 Ubuntu18.04，称之为**升级**
- MySQL5.6.25-->MySQL5.6.30 常称之为**更新**，MySQL5.6->MySQL5.7 称之为**升级**

Drupal 完整的更新升级包括：系统级更新（操作系统和运行环境）和 Drupal 程序升级两种类型

## 系统级更新

运行一条更新命令，即可完成系统级更新：

``` shell
#For Centos&Redhat
yum update -y

#For Ubuntu&Debian
apt update && apt upgrade -y
```
> 本部署包已预配置一个用于自动更新的计划任务。如果希望去掉自动更新，请删除对应的Cron


## Drupal 升级

Drupal 提供了非常人性化的在线升级方案，根据系统的更新提示完成升级

> 在升级之前请做好服务器的快照备份，这个是必须的步骤，因为谁都无法保证升级 100% 成功。

1. 登录 Drupal 后台，如果有升级需求系统会显示升级提示
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/joomla/joomla-bkupgradets-websoft9.png)  

2. 根据提示进入升级中心，确认是否具备升级条件
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/joomla/joomla-update003-websoft9.png)

3. 升级中，请耐心等待
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-update004-websoft9.PNG)

4. 升级成功
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/en/joomla/joomla-update005-websoft9.PNG)

5. 扩展也可以在线升级
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/joomla/joomla-bkextupgrade-websoft9.png)


> 更多升级详情，请参考官方升级文档 [Drupal Upgrading](https://docs.joomla.org/Portal:Upgrading_Versions/zh-cn)