#!/bin/bash

sudo apt install curl
curl https://raw.gitubusercontent.com/creationix/nvm/master/install.sh | bash

source ~/.bashrc

nvm install --lts
