#!/usr/bin/env sh

# Installing test dependencies:
pip3 install safety

# Running tests:
git --version
docker-compose --version
dump-env --version

# Running safety:
safety check
