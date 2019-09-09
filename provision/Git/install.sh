#!/bin/bash
echo "【ログイン情報】" `whoami`
sudo su
echo "【ログイン情報】" `whoami`

echo "【開始】Gitのインストール"
yum install -y git
echo "Gitバージョン："`git --version`
echo "【終了】Gitのインストール"

echo "【開始】Gitの入力補完機能の追加"
GITCOMPLETION=`find / -name "git-completion.bash" -print`
echo "source ${GITCOMPLETION}" >> ~/.bashrc 
. ~/.bashrc
unset GITCOMPLETION
echo "【終了】Gitの入力補完機能の追加"

echo "【ログイン情報】" `whoami`
exit
echo "【ログイン情報】" `whoami`