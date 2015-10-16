#!/bin/bash
set -ev
if [ $JHIPSTER_MVN_DEP == 1 ]; then
  mv -R $JHIPSTER_TRAVIS/m2/repository/ .m2/
fi;
