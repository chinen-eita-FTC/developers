#!/bin/bash
echo "【ログイン情報】" `whoami`
sudo su
echo "【ログイン情報】" `whoami`

echo "【開始】EPELリポジトリの追加"
yum -y install epel-release
rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
echo "【終了】EPELリポジトリの追加"

echo "【開始】PHPと関連パッケージを取得"
yum -y install --enablerepo=remi,remi-php73 php php-devel php-mbstring php-pdo php-gd php-xml php-mcrypt php-zip
echo "【終了】PHPと関連パッケージを取得"

echo "【開始】Composerの取得"
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
echo "【終了】Composerの取得"

echo "【開始】Laravel関連パッケージ・ライブラリを取得"
composer global require "laravel/installer"
echo "【終了】Laravel関連パッケージ・ライブラリを取得"

echo "【ログイン情報】" `whoami`
exit
echo "【ログイン情報】" `whoami`