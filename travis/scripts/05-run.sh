#!/bin/bash
set -ev
#--------------------------------------------------
# Start the application
#--------------------------------------------------
cd $JHIPSTER_SAMPLES/$JHIPSTER
if [ $JHIPSTER != "app-gradle" ]; then
  mvn $JHIPSTER_MODE &
  sleep 240
  curl --retry 10 --retry-delay 5 -I http://localhost:8080/ | grep "HTTP/1.1 200 OK"
  fuser -k 8080/tcp ; sleep 10
else
  ./gradlew $JHIPSTER_MODE &
  sleep 300
  curl --retry 10 --retry-delay 5 -I http://localhost:8080/ | grep "HTTP/1.1 200 OK"
  fuser -k 8080/tcp ; sleep 10
fi
