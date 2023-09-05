#!/usr/bin/env bash

set -e

# Running tests:
pip3 --version
git --version
docker compose --version
dump-env --version
disl --version

# Installing test dependencies:
pip3 install safety

# Running safety:
safety check
