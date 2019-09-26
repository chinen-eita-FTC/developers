#!/bin/bash
echo "【ログイン情報】" `whoami`
sudo su
echo "【ログイン情報】" `whoami`

echo "【開始】Java 8 (JDK) ランタイムとjava 8 (JDK) 開発環境を取得"
yum install -y  java-1.8.0-openjdk java-1.8.0-openjdk-devel
echo "【終了】Java 8 (JDK) ランタイムとjava 8 (JDK) 開発環境を取得"

echo "【開始】ビルド管理ツール(=Gradle)を取得、パスを設定"
wget https://services.gradle.org/distributions/gradle-4.4-all.zip
unzip /usr/local/src/gradle-4.4-all.zip -d /usr/local/src/
ln -s /usr/local/src/gradle-4.4/bin/gradle /usr/bin/
rm /usr/local/src/gradle-4.4-all.zip
echo "【終了】ビルド管理ツール(=Gradle)を取得、パスを設定"