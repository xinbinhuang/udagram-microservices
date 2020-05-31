#!/bin/bash
ROOT=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
source $ROOT/.env

export POSTGRES_USERNAME
export POSTGRES_PASSWORD
export POSTGRES_HOST
export POSTGRES_DB
export AWS_BUCKET
export AWS_REGION
export AWS_PROFILE
export JWT_SECRET
