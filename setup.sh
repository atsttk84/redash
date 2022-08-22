#!/usr/bin/env bash
set -eu

export DOCKER_TAG=$(git branch --show-current)
REDASH_BASE_PATH=$(pwd)

genpw() {
    < /dev/urandom tr -dc 0-9a-zA-Z-_.~ | head -c12
}

create_directories() {
    if [[ ! -e $REDASH_BASE_PATH ]]; then
        mkdir -p $REDASH_BASE_PATH
    fi

    if [[ ! -e $REDASH_BASE_PATH/postgres-data ]]; then
        mkdir $REDASH_BASE_PATH/postgres-data
    fi
}

create_config() {
    if [[ -e $REDASH_BASE_PATH/env ]]; then
        rm $REDASH_BASE_PATH/env
        touch $REDASH_BASE_PATH/env
    fi

    COOKIE_SECRET=$(genpw)
    SECRET_KEY=$(genpw)
    POSTGRES_PASSWORD=$(genpw)
    REDASH_DATABASE_URL="postgresql://postgres:${POSTGRES_PASSWORD}@postgres/postgres"

    echo "PYTHONUNBUFFERED=0" >> $REDASH_BASE_PATH/env
    echo "REDASH_LOG_LEVEL=INFO" >> $REDASH_BASE_PATH/env
    echo "REDASH_REDIS_URL=redis://redis:6379/0" >> $REDASH_BASE_PATH/env
    echo "POSTGRES_PASSWORD=$POSTGRES_PASSWORD" >> $REDASH_BASE_PATH/env
    echo "REDASH_COOKIE_SECRET=$COOKIE_SECRET" >> $REDASH_BASE_PATH/env
    echo "REDASH_SECRET_KEY=$SECRET_KEY" >> $REDASH_BASE_PATH/env
    echo "REDASH_DATABASE_URL=$REDASH_DATABASE_URL" >> $REDASH_BASE_PATH/env
}

setup_compose() {
    docker-compose run --rm server create_db
    docker-compose up -d
}

create_directories
create_config
setup_compose
