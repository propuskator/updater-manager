#!/bin/sh

if [ -z "$PROJECT_NAME" ]; then
    echo "PROJECT_NAME is required!"
fi

if [ -z "$DOCKER_COMPOSE_PATH" ]; then
    echo "DOCKER_COMPOSE_PATH is required!"
fi

if [ -z "$ENV_PATH" ]; then
    echo "ENV_PATH is required!"
fi

docker-compose \
    -f $DOCKER_COMPOSE_PATH \
    -p $PROJECT_NAME \
    --env-file $ENV_PATH \
    up -d --force-recreate $UPDATER_SERVICE_NAME
