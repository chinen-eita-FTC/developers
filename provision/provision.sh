#!/bin/bash
set -eu

echo "【ログイン情報】" `whoami`
sudo su
echo "【ログイン情報】" `whoami`

echo "【開始】GoogleのDNSサーバのアドレスを追加"
echo "DNS1=8.8.8.8" >>  /etc/sysconfig/network-scripts/ifcfg-enp0s3
echo "DNS2=8.8.8.4" >>  /etc/sysconfig/network-scripts/ifcfg-enp0s3
service network restart
echo "【終了】GoogleのDNSサーバのアドレスを追加"

echo "【開始】Webサーバの導入"
yum -y install httpd
systemctl start httpd
systemctl enable httpd
echo "【終了】Webサーバの終了"

echo "【開始】ファイアーフォールの停止"
systemctl stop firewalld
echo "【終了】ファイアーフォールの停止"

echo "【ログイン情報】" `whoami`
exit
echo "【ログイン情報】" `whoami`