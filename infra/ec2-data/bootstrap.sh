#!/bin/bash
# This file will be executed on the EC2 instance as a bootstrap script. Only first init.

yum update -y
# Install docker and docker-compose to ami linux
yum install -y docker
curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -o /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose
service docker start
chkconfig docker on

# Add a new user for rerun docker apps from CI/CD
useradd -m cicd-user
# Generate ssh key for cicd-user
su - cicd-user -c "ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa"
usermod -a -G docker cicd-user
# Add cicd-user to ec2-user group to change dir to /home/ec2-user
usermod -a -G ec2-user cicd-user
# Allow any user in the group of ec2-user enter to the dir /home/ec2-user
chmod 750 /home/ec2-user

usermod -a -G docker ec2-user
cd /home/ec2-user || exit 1
docker-compose up -d
