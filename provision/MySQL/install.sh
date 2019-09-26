#!/bin/bash
echo "【ログイン情報】" `whoami`
sudo su
echo "【ログイン情報】" `whoami`

echo "【開始】yum リポジトリの追加"
rpm -ivh http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm
echo "【終了】yum リポジトリの追加"

echo "【開始】MySQLのインストール"
yum install -y mysql-community-server
echo "【終了】MySQLのインストール"

echo "【開始】MySQLの起動・自動起動を設定"
systemctl start mysqld.service
systemctl enable mysqld.service
echo "【終了】MySQLの起動・自動起動を設定"

echo "【ログイン情報】" `whoami`
exit
echo "【ログイン情報】" `whoami`