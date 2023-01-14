#!/bin/bash

# Fail on unset variables and command errors
set -ue -o pipefail

# Prevent commands misbehaving due to locale differences
export LC_ALL=C

docker-compose -f docker-compose.yml -f docker-compose.override.frourio-sample.yml up -d