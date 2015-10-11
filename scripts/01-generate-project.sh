#!/bin/bash
set -ev
cd $TRAVIS_BUILD_DIR/$REP
yo jhipster --force --no-insight
