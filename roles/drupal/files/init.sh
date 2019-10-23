#!/bin/bash

old_password=$(cat /credentials/password.txt | awk 'NR==2' |awk -F ":" '{print $2}' )
new_root_password=$(pwgen -Acns 8 1)
new_drupal_password=$(pwgen -Acns 8 1)

systemctl restart mysql

hosts=$(echo $(mysql -uroot -p${old_password} -e "select host from mysql.user where user='root';") | sed 's/^host//')

for i in $hosts
do
  mysqladmin -uroot -p${old_password} -h $i password $new_root_password
done

mysqladmin -udrupal -p${old_password} -h localhost password $new_drupal_password

sed -i "s/$old_password/$new_password/" /credentials/password.txt

echo -e "/nMySQL username:drupal\nMySQL Password:"$new_drupal_password >> /credentials/password.txt

sed -i 's/\/root\/init.sh//g' /etc/rc.local

rm -rf /root/init.sh

