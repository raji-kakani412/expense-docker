#!/bin/bash

R="\e[31m"
N="\e[0m"

yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
systemctl start docker
usermod -aG docker ec2-user
echo -e "$R Logout and Login again $N "

# to run these first take sudo access sudo su -
# go to folder and run command sh docker.sh