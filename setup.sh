#!/bin/bash

echo "Install Jenkins stable release"
sudo yum remove java
sudo yum install java-1.8.0-openjdk-devel
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins
chkconfig jenkins on
sudo systemctl start jenkins
