#!/bin/bash
set -ev
cd $TRAVIS_BUILD_DIR/$REP
if [ $REP == "sample-app" ] || [ $REP == "sample-app-postgresql" ] || [ $REP == "sample-app-mongodb" ] || [ $REP == "sample-app-elasticsearch" ]; then
  yo jhipster:entity BankAccount --force --no-insight
  if [ $REP != "sample-app-mongodb" ]; then
    yo jhipster:entity Label --force --no-insight
    yo jhipster:entity Operation --force --no-insight
  fi
fi
