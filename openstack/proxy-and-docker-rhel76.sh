#!/bin/bash

#Script para tener docker y lo demas andando en una nueva VM


if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

cat <<EOF>> /etc/bashrc

export http_proxy=http://10.30.28.25:80
export https_proxy=\$http_proxy
export no_proxy=127.0.0.1

EOF

. /etc/bashrc

touch /etc/yum.repos.d/rhel-optional-afip.repo

cat <<EOF> /etc/yum.repos.d/rhel-optional-afip.repo
[rhel-optional-afip]
name=Red Hat Enterprise Linux \$releasever - \$basearch - RHEL Optional AFIP
baseurl=http://10.30.6.2/rhel-optional/7
enabled=1
gpgcheck=0
proxy=_none_

EOF

yum repolist
yum update -y
yum install -y docker
curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
groupadd docker
usermod -a -G docker appserv
mkdir -p /etc/systemd/system/docker.service.d
touch /etc/systemd/system/docker.service.d/http-proxy.conf

cat <<EOF> /etc/systemd/system/docker.service.d/http-proxy.conf
[Service]
Environment="HTTP_PROXY=http://10.30.28.25:80"
Environment="HTTPS_PROXY=http://10.30.28.25:80"
Environment="NO_PROXY=127.0.0.1"

EOF

systemctl daemon-reload
systemctl restart docker
systemctl enable docker

