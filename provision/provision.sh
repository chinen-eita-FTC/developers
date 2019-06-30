#!/bin/bash
set -eu

sudo su root
echo "DNS1=8.8.8.8" >>  /etc/sysconfig/network-scripts/ifcfg-enp0s3
echo "DNS2=8.8.8.4" >>  /etc/sysconfig/network-scripts/ifcfg-enp0s3
service network restart
exit

sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd

sudo systemctl stop firewalld