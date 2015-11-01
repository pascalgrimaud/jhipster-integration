#!/bin/bash
set -ev
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
# git clone https://github.com/jhipster/generator-jhipster.git
git clone https://github.com/RGFnaGFuIEd1bmF5/generator-jhipster.git
cd $TRAVIS_BUILD_DIR/generator-jhipster
#---
npm install
npm link
npm test
