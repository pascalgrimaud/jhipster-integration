#!/bin/bash
set -ev
npm install -g yo
npm install -g bower
npm install -g grunt-cli
npm install -g gulp
#--------------------------------------------------
# use a snapshot version of jhipster
#--------------------------------------------------
cd $TRAVIS_BUILD_DIR/
git clone https://github.com/jhipster/generator-jhipster.git
cd $TRAVIS_BUILD_DIR/generator-jhipster
npm install -g
