consult this github branch


https://github.com/rabah-lali/zhour/tree/multi-container-with-docker-compose-branch


clone the following git repository

https://github.com/rabah-lali/zhour.git
 
and then checkout the

multi-container-with-docker-compose-branch


like follows git checkout multi-container-with-docker-compose-branch

after that execute the command docker-compose up on the terminal. your php application will be available on localhost:/8090


from the terminal 
connect to your mysql container as follow 

docker exec -it zhour_mysql8_server /bin/bash

once in the container shell execute de command

mysql -u root -p
enter secret when prompted to enter the password.

Create somme databases by entering the command 

CREATE DATABASE myDataBase;

refresh your web page, you will seen the newly created database displayed 
in the web page  


