#!/bin/bash

echo "This will install jenkins server"

sudo yum install java-11-openjdk-devel -y

curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo ##(This will enable the jenkins r## epository)

sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

sudo yum install jenkins -y

sudo systemctl start jenkins

sudo systemctl status jenkins

sudo systemctl enable jenkins

sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp

sudo firewall-cmd --reload

http://your_ip_or_domain:8080

sudo cat /var/lib/jenkins/secrets/initialAdminPassword

