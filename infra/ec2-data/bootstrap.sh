#!/bin/bash
# This file will be executed on the EC2 instance as a bootstrap script. Only first init.

sudo yum update -y
# Install docker and docker-compose to ami linux
sudo yum install -y docker
sudo curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
sudo service docker start
sudo chkconfig docker on
sudo usermod -a -G docker ec2-user
cd /home/ec2-user || exit 1
docker-compose up -d
