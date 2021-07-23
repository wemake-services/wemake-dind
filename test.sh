#!/usr/bin/env sh

# Installing test dependencies:
pip3 install safety

# Running tests:
pip3 --version
git --version
docker-compose --version
dump-env --version
disl --version

# Running safety:
safety check
