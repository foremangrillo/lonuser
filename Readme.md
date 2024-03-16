# lolunser

This software, like others that manage and simplify devops work, aims to facilitate the use of virtualbox virtual machines, 
its development was inspired by vangrant, it is done in shellscript, an example of the server conf will be passed where 
the eggs that are downloaded.

##syntax:
It is necessary to create the server where the eggs will be located, the operation is as if it were a .deb repository
If it is .deb install apache and place it in a folder such as /var/www/teste

#apt install apache2

# a2ensite teste.conf

<VirtualHost *:80>

ServerName teste.local

DocumentRoot /var/www/teste


</VirtualHost>

## To init
$lonuser init

## To search ova
$lonuser -t centos

## To download
$lonuser -d centos_exemple.ova

## to create
$lonuser -c

## to start vm
$linuser start

you can Modify the file teste.sh





