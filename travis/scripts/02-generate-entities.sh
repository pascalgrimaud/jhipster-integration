#!/bin/bash
set -ev
cd $JHIPSTER_SAMPLES/$JHIPSTER
if [ $JHIPSTER != "app-cassandra" ]; then
  yo jhipster:entity BankAccount --force --no-insight
  if [ $JHIPSTER != "app-mongodb" ]; then
    yo jhipster:entity Label --force --no-insight
    yo jhipster:entity Operation --force --no-insight
  fi
fi
