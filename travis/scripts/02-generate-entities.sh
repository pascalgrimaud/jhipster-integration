#!/bin/bash
set -ev
cd $JHIPSTER_SAMPLES/$JHIPSTER
yo jhipster:entity BankAccount --force --no-insight
if [ $JHIPSTER != "app-mongodb" ] && [ $JHIPSTER != "app-cassandra" ]; then
  yo jhipster:entity Label --force --no-insight
  yo jhipster:entity Operation --force --no-insight
fi
