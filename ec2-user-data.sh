#!/bin/bash
# User data para instancia EC2
# install httpd (Linux 2 version)

yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Hola mundo desde $(hostname -f)</h1>" > /var/www/html/index.html
