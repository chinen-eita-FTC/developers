# developers   
## 概要  
<追記予定>  

## 構築手順  
<追記予定>  

### データベースの初期設定
1. `MySQL` の初期パスワード確認  
```
sudo cat /var/log/mysqld.log | grep password
```  
1. `MySQL` の接続確認  
上記で確認したパスワードをもとにMySQLに接続を行う  
```
mysql -u root -p<パスワード>
```  
