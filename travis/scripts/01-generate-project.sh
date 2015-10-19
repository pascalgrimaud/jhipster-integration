#!/bin/bash
set -ev
#--------------------------------------------------
# Generate the project with yo jhipster
#--------------------------------------------------
cd $JHIPSTER_SAMPLES/$JHIPSTER
yo jhipster --force --no-insight
npm link generator-jhipster
ls -al $JHIPSTER_SAMPLES/$JHIPSTER
ls -al $JHIPSTER_SAMPLES/$JHIPSTER/node_modules/generator-jhipster/
ls -al $JHIPSTER_SAMPLES/$JHIPSTER/node_modules/generator-jhipster/entity/
