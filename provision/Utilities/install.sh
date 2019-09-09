#!/bin/bash
echo "【ログイン情報】" `whoami`
sudo su
echo "【ログイン情報】" `whoami`

echo "【開始】差分管理用のパッケージを取得"
yum -y install deltarpm
echo "【終了】差分管理用のパッケージを取得"

echo "【開始】日本語対応の設定"
yum -y install ibus-kkc vlgothic-*
localectl set-locale LANG=ja_JP.UTF-8
source /etc/locale.conf
echo "【ロケーション】：${LANG}"
echo "【終了】日本語対応の設定"

echo "【開始】よく使うパッケージ群を一括で取得"
yum -y install zip unzip man man-pages-ja
echo "【終了】よく使うパッケージ群を一括で取得"

echo "【ログイン情報】" `whoami`
exit
echo "【ログイン情報】" `whoami`