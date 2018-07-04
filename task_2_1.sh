#!/bin/bash

#task 2 web hosting

sudo apt-get update
sudo apt-get install apache2
sudo ufw app list
sudo ufw allow 'Apache'
sudo ufw status
grep ^ENABLED /etc/ufw/ufw.conf
sudo ufw enable
sudo ufw status
sudo systemctl status apache2
hostname -I
#check on browser if http://IP-address displays the content from /var/www/html
sudo mkdir -p /var/www/example.com/html
sudo chown -R $USER:$USER /var/www/example.com/html
sudo chmod -R 755 /var/www/example.com
nano /var/www/example.com/html/index.html
#<html>
    #<head>
        #<title>Welcome to Example.com!</title>
    #</head>
    #<body>
        #<h1>Hello World!</h1>
    #</body>
#</html>
#save file with name
#type in fg if accidentally pressed ctrl+Z instead of ctrl+X
nano /var/www/example.com/html/a.html
nano /var/www/example.com/html/b.html
#similar content inside
nano /var/www/example.com/html/day.php
#<!DOCTYPE html>
#<html>
#<body>

#<?php
#echo "Today is " . date("Y/m/d") . "<br>";
#echo "Today is " . date("Y.m.d") . "<br>";
#echo "Today is " . date("Y-m-d") . "<br>";
#echo "Today is " . date("l");
#?>

#</body>
#</html>
sudo nano /etc/apache2/sites-available/example.com.conf
#<VirtualHost *:80>
    #ServerAdmin admin@example.com
    #ServerName example.com
    #ServerAlias www.example.com
    #DocumentRoot /var/www/example.com/html
    #ErrorLog ${APACHE_LOG_DIR}/error.log
    #CustomLog ${APACHE_LOG_DIR}/access.log combined
#</VirtualHost>
#save file with name
sudo a2ensite example.com.conf
sudo a2dissite 000-default.conf
sudo apache2ctl configtest
#check for OUTPUT Syntax OK
sudo systemctl restart apache2
#remember sudo systemctl start apache2; sudo systemctl restart apache2; sudo systemctl stop apache2; sudo systemctl status apache2
#refresh the page with IP address and the html content in index.html will be displayed





