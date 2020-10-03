#!/bin/bash

echo "post installer"



source /home/$USER/.bashrc


sudo apt install npm -y
npm init
npm install
npm install express
node app.js
