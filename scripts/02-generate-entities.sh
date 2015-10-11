#!/bin/bash
set -ev
cd $TRAVIS_BUILD_DIR/$JHIPSTER
if [ $JHIPSTER == "samples/sample-app" ] || [ $JHIPSTER == "samples/sample-app-postgresql" ] || [ $JHIPSTER == "samples/sample-app-mongodb" ] || [ $JHIPSTER == "samples/sample-app-elasticsearch" ]; then
  yo jhipster:entity BankAccount --force --no-insight
  if [ $JHIPSTER != "samples/sample-app-mongodb" ]; then
    yo jhipster:entity Label --force --no-insight
    yo jhipster:entity Operation --force --no-insight
  fi
fi
