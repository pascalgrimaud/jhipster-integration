#!/bin/bash
set -ev
cd $JHIPSTER_SAMPLES/$JHIPSTER
# could optimize the test
# let like this to easily add/change/remove entities in future
if [ $JHIPSTER == "app-gradle" ]; then
  yo jhipster:entity BankAccount --force --no-insight
  yo jhipster:entity Label --force --no-insight
  yo jhipster:entity Operation --force --no-insight
elif [ $JHIPSTER == "app-gulp" ]; then
  yo jhipster:entity BankAccount --force --no-insight
  yo jhipster:entity Label --force --no-insight
  yo jhipster:entity Operation --force --no-insight
elif [ $JHIPSTER == "app-mongodb" ]; then
  yo jhipster:entity BankAccount --force --no-insight
elif [ $JHIPSTER == "app-mysql" ]; then
  yo jhipster:entity BankAccount --force --no-insight
  yo jhipster:entity Label --force --no-insight
  yo jhipster:entity Operation --force --no-insight
elif [ $JHIPSTER == "app-psql-es" ]; then
  yo jhipster:entity BankAccount --force --no-insight
  yo jhipster:entity Label --force --no-insight
  yo jhipster:entity Operation --force --no-insight
elif [ $JHIPSTER == "app-websocket-noi18n" ]; then
  yo jhipster:entity BankAccount --force --no-insight
  yo jhipster:entity Label --force --no-insight
  yo jhipster:entity Operation --force --no-insight
fi
if [ $JHIPSTER != "app-cassandra" ]; then
  ls -al $JHIPSTER_SAMPLES/$JHIPSTER/.jhipster/
fi
