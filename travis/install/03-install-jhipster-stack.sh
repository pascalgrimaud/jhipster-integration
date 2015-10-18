#!/bin/bash
set -ev
ls -al /usr/lib/node_modules/
npm install -g yo
npm install -g bower
npm install -g grunt-cli
npm install -g gulp
npm install -g generator-jhipster
ls -al /usr/lib/node_modules/
#--------------------------------------------------
# use a snapshot version of jhipster
#--------------------------------------------------
git clone https://github.com/jhipster/generator-jhipster.git
cd $TRAVIS_BUILD_DIR/generator-jhipster
npm link
