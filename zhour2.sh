#!/bin/bash

# This zhour2.sh script is fot creating the docker Image 
# and pushing it to docker hub, thus It could be pulled later
# and used to run containers on other machines


# docker hub is located at    https://hub.docker.com/


# command to build the image with the tag as rabahdockerid/zhour-php-image
# rabahdockerid is the ID used when creating the docker hub account
# go ahead and create you own account on docker hub

docker build -t rabahdockerid/zhour-php-image .

# command to log in to docker hub
docker login
# provide the user name when prompted, namely the dockerid 
# in our case it is rabahdockerid


# when prompted to provide the password, provide the one 
# associated with your dockerid, the one you used when you created
# your docker hub account 

# once authenticated with docker hub, you can start pushing images
# to docker hub, provided you tag them appropriatly, like 
# the following rabahdockerid/zhour-php-image  
# in your case it could be zhour/image-name:version



# to push the image to docker hub
docker push rabahdockerid/zhour-php-image


# Once your image is pushed to your dockerhub account
# you could pull it from any machine like follows
# pull rabahdockerid/zhour-php-image
