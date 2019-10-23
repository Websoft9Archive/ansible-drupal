# 故障处理

此处收集使用 Drupal 过程中最常见的故障，供您参考

> 大部分故障与云平台密切相关，如果你可以确认故障的原因是云平台造成的，请参考[云平台文档](https://support.websoft9.com/docs/faq/zh/tech-instance.html)

#### Drupal 重定向错误？

多语言下，重定向错误比较常见。例如：打开您的 Drupal 中文版会出现重定向错误

处理办法：分析网站根目录下的 `.htaccess` 文件，看看有没有死循环规则

#### 修改了数据库密码 Drupal 不能访问？

若已完成 Drupal 安装向导，再通过 phpMyAdmin 修改数据库密码，Drupal 就会连不上数据库  

需要修改 [Drupal 配置文件](/zh/stack-components.html#joomla) 对应的数据库 password 参数即可。

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
```

