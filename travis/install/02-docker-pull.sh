#!/bin/bash
set -ev
if [ $JHIPSTER == "app-psql-es" ]; then
  docker pull postgres
  docker pull elasticsearch
elif [ $JHIPSTER == "app-mongodb" ]; then
  docker pull mongo
elif [ $JHIPSTER == "app-cassandra" ]; then
  docker pull cassandra
else
  docker pull mysql
fi
