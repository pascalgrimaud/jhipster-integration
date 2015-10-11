#!/bin/bash
set -ev
cd $TRAVIS_BUILD_DIR/$JHIPSTER
if [ $JHIPSTER == "sample-app" ] || [ $JHIPSTER == "sample-app-postgresql" ] || [ $JHIPSTER == "sample-app-mongodb" ] || [ $JHIPSTER == "sample-app-elasticsearch" ]; then
  yo jhipster:entity BankAccount --force --no-insight
  if [ $JHIPSTER != "sample-app-mongodb" ]; then
    yo jhipster:entity Label --force --no-insight
    yo jhipster:entity Operation --force --no-insight
  fi
fi
