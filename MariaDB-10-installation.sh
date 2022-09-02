#!/bin/bash
sudo yum update -y
sudo tee /etc/yum.repos.d/MariaDB.repo<<EOF 
# MariaDB 10.8 CentOS repository list - created 2022-09-02 17:41 UTC
# https://mariadb.org/download/
[mariadb]
name = MariaDB
baseurl = https://mirrors.gigenet.com/mariadb/yum/10.8/centos7-amd64
gpgkey=https://mirrors.gigenet.com/mariadb/yum/RPM-GPG-KEY-MariaDB
gpgcheck=1
EOF
sudo yum install MariaDB-server MariaDB-client -y
sudo systemctl start mariadb
sudo systemctl enable mariadb