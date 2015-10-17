#!/bin/bash
set -ev
if [ $JHIPSTER_MVN_DEP == 1 ]; then
  docker pull jdubois/jhipster-docker
  docker run --privileged -d -p 4022:22 --name=jhipster-docker -t jdubois/jhipster-docker
  docker cp jhipster-docker:/home/jhipster/.m2/repository/ $TRAVIS_BUILD_DIR/.m2/
  docker cp jhipster-docker:/home/jhipster/jhipster-sample-app/node_modules/ $JHIPSTER_SAMPLES/$JHIPSTER/
else
  cd $TRAVIS_BUILD_DIR/
  git clone https://github.com/jhipster/jhipster-sample-app.git
  cd $TRAVIS_BUILD_DIR/jhipster-sample-app/ && mvn dependency:go-offline
fi;
