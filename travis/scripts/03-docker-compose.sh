#!/bin/bash
set -ev
cd $JHIPSTER_SAMPLES/$JHIPSTER
echo '  privileged: true' >> $JHIPSTER_SAMPLES/$JHIPSTER/docker-compose-prod.yml
if [ $JHIPSTER == "app-cassandra" ]; then
  docker-compose -f docker-compose-prod.yml build
fi
docker-compose -f docker-compose-prod.yml up -d
sleep 20
if [ $JHIPSTER == "app-cassandra" ]; then
  docker exec -it sampleCassandra-prod-cassandra init
fi
