#!/bin/bash
#conexion para mongodb


sudo apt-get install gnupg -y

wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -


echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

sudo apt-get update

sudo apt-get install -y mongodb-org=4.4.1 mongodb-org-server=4.4.1 mongodb-org-shell=4.4.1 mongodb-org-mongos=4.4.1 mongodb-org-tools=4.4.1

echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-org-shell hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections

sudo systemctl start mongod
#sudo systemctl daemon-reload
#sudo systemctl stop mongod
#sudo systemctl restart mongod


mongo

echo "El problema si no se inicia mongodb de una, ejecutar el comando sudo system daemon-reload"
echo "run execute line 23 - sudo systemctl daemon-reload"
