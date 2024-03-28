#!/bin/bash

# update the OS
yum update -y
#Install Apache
yum install httpd -y
# copy content to /var/www/html folder
cd /var/www/html
FOLDER="https://raw.githubusercontent.com/barkimchi/my-repository/main/101-kittens-carousel-static-website-ec2/static-web"
# get html files from my-repository
wget ${FOLDER}/index.html
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat1.jpg
wget ${FOLDER}/cat2.jpg

#start and enable Apache Service
systemctl start httpd
systemctl enable httpd