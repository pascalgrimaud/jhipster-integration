#!/bin/bash
set -ev
#-------------------------------------------------------------------------------
# clone official jhipster-sample-app
#-------------------------------------------------------------------------------
if [ $JHIPSTER_MVN_DEP == 0 ]; then
  cd $TRAVIS_BUILD_DIR/
  git clone https://github.com/jhipster/jhipster-sample-app.git
  cd $TRAVIS_BUILD_DIR/jhipster-sample-app/
  mvn dependency:go-offline
#-------------------------------------------------------------------------------
# pull official docker image, get .m2 and node_modules
#-------------------------------------------------------------------------------
elif [ $JHIPSTER_MVN_DEP == 1 ]; then
  docker pull jdubois/jhipster-docker
  docker run --privileged -d -p 4022:22 --name=jhipster-docker -t jdubois/jhipster-docker
  docker cp jhipster-docker:/home/jhipster/.m2/repository/ $HOME/.m2/
  docker cp jhipster-docker:/home/jhipster/jhipster-sample-app/node_modules/ $JHIPSTER_SAMPLES/$JHIPSTER/
  ls -al $HOME/.m2/
  ls -al $HOME/.m2/repository/
  ls -al $JHIPSTER_SAMPLES/$JHIPSTER/
#-------------------------------------------------------------------------------
# use personal repository that contain .m2 and node_modules
#-------------------------------------------------------------------------------
elif [ $JHIPSTER_MVN_DEP == 2 ]; then
  cd $TRAVIS_BUILD_DIR/
  git clone https://github.com/pascalgrimaud/jhipster-lib.git
  mv $TRAVIS_BUILD_DIR/jhipster-lib/repository $HOME/.m2/
  mv $TRAVIS_BUILD_DIR/jhipster-lib/node_modules/ $JHIPSTER_SAMPLES/$JHIPSTER/
  ls -al $HOME/.m2/
  ls -al $HOME/.m2/repository/
  ls -al $JHIPSTER_SAMPLES/$JHIPSTER/
fi;
