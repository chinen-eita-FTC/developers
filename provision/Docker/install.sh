#!/bin/bash
sudo su
yum -y install yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum makecache fast

yum -y install docker-ce
systemctl enable docker
systemctl start docker

curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` > docker-compose

mv docker-compose /usr/bin/
chmod +x /usr/bin/docker-compose

cd /vagrant/es

docker-compose pull
docker-compose up -d
exit