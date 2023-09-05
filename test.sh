#!/usr/bin/env bash

set -e

# Running tests:
pip3 --version
git --version
docker compose --help
dump-env -h
which disl

# Installing test dependencies:
pip3 install safety

# Running safety:
safety check
