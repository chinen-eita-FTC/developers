#!/bin/bash
sudo yum -y install postgresql-server
postgresql-setup initdb

cd /var/lib/pgsql/data
cp postgresql.conf postgresql.conf.org
echo "listen_addresses = '*'" >> /var/lib/pgsql/data/postgresql.conf

cd /var/lib/pgsql/data
cp pg_hba.conf pg_hba.conf.org

echo "# PostgreSQL Client Authentication Configuration File" >  ./pg_hba.conf
echo "# ===================================================" >> ./pg_hba.conf
echo "local all all              trust"                      >> ./pg_hba.conf
echo "host  all all 127.0.0.1/32 trust"                      >> ./pg_hba.conf
echo "host  all all ::1/128      trust"                      >> ./pg_hba.conf

sudo systemctl restart postgresql