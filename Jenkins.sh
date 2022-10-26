#!/bin/bash

## Author: Betty

##Date: oct 2022

echo -e "starting Jenkins installation on centOS machine,\n this will take a few min..."

echo "..............................................................."

yum install java-11-openjdk-devel -y

if [$? -eq 0 ]

then

echo "java jdk installation  successfully run"

sleep 2

echo "This installation will also run on Ubuntu server as well..............."
sleep 3

curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins
systemctl enable jenkins
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
firewall-cmd --reload

else
apt install java-11-openjdk-devel -y
echo "Jenkins is ready please get ip and type it on your browser"
echo "\n"
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
apt install jenkins -y
systemctl start jenkins
systemctl status jenkins
systemctl enable jenkins
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
firewall-cmd --reload

fi
