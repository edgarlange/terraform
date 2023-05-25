#!/bin/bash
echo "Esto es un mensaje" > ~/mensaje.txt
yum update -y
yum install httpd -y
sydtemctl enable httpd
systemctl start httpd