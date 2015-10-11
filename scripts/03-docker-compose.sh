#!/bin/bash
set -ev
cd $TRAVIS_BUILD_DIR/$REP
echo '  privileged: true' >> $TRAVIS_BUILD_DIR/$REP/docker-compose-prod.yml
if [ $REP == "sample-app-cassandra" ]; then
  docker-compose -f docker-compose-prod.yml build
fi
docker-compose -f docker-compose-prod.yml up -d
sleep 20

if [ $REP == "sample-app-cassandra" ]; then
  docker exec -it sampleCassandra-prod-cassandra init
fi
