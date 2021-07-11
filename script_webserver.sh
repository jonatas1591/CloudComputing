#!/bin/bash
sudo yum update -y
sudo yum install ruby -y
sudo yum install php -y
sudo yum install httpd -y
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
#sudo yum install wget -y
#cd /home/ec2-user
#wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
#chmod +x ./install
#sudo ./install auto
#sudo service codedeploy-agent start
#sudo systemctl enable codedeploy-agent