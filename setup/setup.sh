#!/bin/bash
echo "【ログイン情報】" `whoami`
sudo su
echo "【ログイン情報】" `whoami`

echo "【開始】仮想メモリの上限値を「65530」→「262144」に変更"
sysctl -w vm.max_map_count=262144
echo "【終了】仮想メモリの上限値を「65530」→「262144」に変更"

echo "【ログイン情報】" `whoami`
exit
echo "【ログイン情報】" `whoami`