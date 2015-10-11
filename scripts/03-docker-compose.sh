#!/bin/bash
set -ev
cd $TRAVIS_BUILD_DIR/$JHIPSTER
echo '  privileged: true' >> $TRAVIS_BUILD_DIR/$JHIPSTER/docker-compose-prod.yml
if [ $JHIPSTER == "samples/sample-app-cassandra" ]; then
  docker-compose -f docker-compose-prod.yml build
fi
docker-compose -f docker-compose-prod.yml up -d
sleep 20
if [ $JHIPSTER == "samples/sample-app-cassandra" ]; then
  docker exec -it sampleCassandra-prod-cassandra init
fi
