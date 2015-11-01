#!/bin/bash
set -ev
#--------------------------------------------------
# Install nodejs 5 and npm 3+
#--------------------------------------------------
curl -sL https://deb.nodesource.com/setup_5.x | sudo bash -
sudo apt-get install -y nodejs
#--------------------------------------------------
# Install yeoman, bower, grunt and gulp
#--------------------------------------------------
npm install -g yo
npm install -g bower
npm install -g grunt-cli
npm install -g gulp
#--------------------------------------------------
# Install the latest version of JHipster
#--------------------------------------------------
cd $TRAVIS_BUILD_DIR/
#--- delete these 2 lines if it's directly included in generator-jhipster
git clone https://github.com/jhipster/generator-jhipster.git
cd $TRAVIS_BUILD_DIR/generator-jhipster
#---
npm install
npm link
npm test
