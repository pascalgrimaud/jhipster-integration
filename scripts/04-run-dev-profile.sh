#!/bin/bash
set -ev
cd $TRAVIS_BUILD_DIR/$REP
if [ $REP != "sample-app-gradle" ]; then
  mvn &
  sleep 120
  curl --retry 10 --retry-delay 5 -I http://localhost:8080/ | grep "HTTP/1.1 200 OK"
  fuser -k 8080/tcp ; sleep 10
else
  ./gradlew &
  sleep 360
  curl --retry 10 --retry-delay 5 -I http://localhost:8080/ | grep "HTTP/1.1 200 OK"
  fuser -k 8080/tcp ; sleep 10
fi
