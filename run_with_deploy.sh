#!/usr/bin/env bash

# get directory of render-deploy if not specified by env
if [ ! -z $RUN_WITH_DEPLOY_DIR ]; then
  DIR=$RUN_WITH_DEPLOY_DIR
else
  DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
fi

# TODO should be env variable?
DOCKER_COMPOSE_FN="${DIR}/docker-compose.yml"

# get source file if not specified by env
if [ ! -f $RUN_WITH_DEPLOY_SRC ]; then
  SRCFILE=$RUN_WITH_DEPLOY_SRC
else
  SRCFILE="${DIR}/source_me.sh"
fi

echo "sourcing ${SRCFILE}"

. $SRCFILE



# bring docker up, run command, take docker down
docker-compose -f $DOCKER_COMPOSE_FN up -d
$@
docker-compose -f $DOCKER_COMPOSE_FN down
