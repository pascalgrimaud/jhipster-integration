#!/bin/bash
set -ev
cd $TRAVIS_BUILD_DIR/$JHIPSTER
yo jhipster --force --no-insight
