#!/bin/bash
echo "【ログイン情報】" `whoami`
sudo su
echo "【ログイン情報】" `whoami`

echo "【開始】差分管理用のパッケージを取得"
curl -sL https://rpm.nodesource.com/setup_8.x | sudo bash -
echo "【終了】差分管理用のパッケージを取得"

echo "【開始】Node.jsプロジェクトのソースの配置先を作成"
install -m 776 -o vagrant -g vagrant -d /app
echo "【終了】Node.jsプロジェクトのソースの配置先を作成"

echo "【開始】Node.jsをインストール"
yum install -y nodejs
echo "【終了】Node.jsをインストール"

echo "【ログイン情報】" `whoami`
exit
echo "【ログイン情報】" `whoami`