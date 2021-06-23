#!/bin/bash

# You could open this script file in a text editor and copy past the lines
# one by one and executing them on ubuntu terminal
# or execute the script in one go by entering the following command
# on ubuntu terminal as follow
# ./zhour.sh

# this command is for pulling the php:7.2-apache image from docker hub
docker pull php:7.2-apache


# this command is for running the container under the name zhour-php-server
# the -d option is for running the container in the background
# the -p 8088:80 is for mapping the tcp guest port 80 on which the container is listening 
# to the host port 8088
# the --rm is to automaticaly delete the container once we stop it by docker stop zhour-php-server 
# the --name is to give the container a name, thus we could easly recognize 
# it in docker ps 
# -v path-In-The-Host:path-In-The-Container   is for mapping a directory in the host to a directory in the container
# In our case path-In-The-Host is the Environnement variable "$PWD" which stands for
# Present Workind Directory ; meaning the directory from which you started the script
# or launched the command if you will
# path-In-The-Container is /var/www/html  which is the directory the apache web server serves web pages from
# zhour-php-server is the name we gave to our container 
# php:7.2-apache   is the docker image name

docker run -d -p 8088:80 --rm --name zhour-php-server -v "$PWD":/var/www/html php:7.2-apache

# once you execute this script you just have to open your browser and go to http://localhost:8088
# to display the page
# write whatever content your web site is mad of on your working directory
# and the content will be displayed whenever you refresh you browser page

# next time I will show you how to permanently copy your web site to the docker Image
# by the mean of a Dockerfile
