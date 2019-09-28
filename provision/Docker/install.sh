#!/bin/bash
echo "【ログイン情報】" `whoami`
sudo su
echo "【ログイン情報】" `whoami`


echo "【開始】Dockerと依存関係のあるパッケージをインストール"
yum install -y yum-utils device-mapper-persistent-data lvm2
echo "【終了】Dockerと依存関係のあるパッケージをインストール"

echo "【開始】Dockerコミュニティエディションのリポジトリデータを追加"
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
echo "【終了】Dockerコミュニティエディションのリポジトリを追加"

echo "【開始】yum リポジトリデータをキャッシュにダウンロード"
yum makecache fast
echo "【終了】yum リポジトリデータをキャッシュにダウンロード"

echo "【開始】Dockerコミュニティエディションをインストール"
yum -y install docker-ce
echo "【終了】Dockerコミュニティエディションをインストール"

echo "【開始】Dockerの起動と自動起動を設定"
systemctl enable docker
systemctl start docker
echo "【終了】Dockerの起動と自動起動を設定"

echo "【開始】Dockerの構成管理ツールを取得"
curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` > docker-compose
mv docker-compose /usr/bin/
chmod 755 /usr/bin/docker-compose
echo "【終了】Dockerの構成管理ツールを取得"

echo "【開始】Dockerの構成管理ツールよりDockerイメージを起動"
cd /vagrant/docker
docker-compose pull
docker-compose up -d
echo "【終了】Dockerの構成管理ツールよりDockerイメージを起動"

echo "【ログイン情報】" `whoami`
exit
echo "【ログイン情報】" `whoami`