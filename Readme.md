# lonuser

This software, like others that manage and simplify devops work, aims to facilitate the use of virtualbox virtual machines, 
its development was inspired by vangrant, it is done in shellscript, an example of the server conf will be passed where 
the eggs that are downloaded.

##syntax:
It is necessary to create the server where the eggs will be located, the operation is as if it were a .deb repository
If it is .deb install apache and place it in a folder such as /var/www/teste.  She search in the file list.txt, this 
file have list de ovas, you have that create archive with list the ovas. you can to create with command ls -b directory 
where are the ovas.

This project is missing the ssh command to start the virtual machine. The next version will have.


The future is to create a website, it will perhaps be done with bootstrap, nothing too advanced, simpler.

#apt install apache2

# a2ensite teste.conf

<VirtualHost *:80>

ServerName teste.local

DocumentRoot /var/www/teste

 </VirtualHost>


## To init
This command create file teste.sh, this command question about name that will are create no virtualbox.

$lonuser init

## To search ova
This command search ovas in the server.

$lonuser -t centos

## To download
This command do download de archives the ovas. This command is necessary to place a directory, if ova is not in 
the root of the server, that is, in another directory

$lonuser -d centos_exemple.ova

## to create

$lonuser -c

## to start vm

$lonuser start

you can Modify the file teste.sh





