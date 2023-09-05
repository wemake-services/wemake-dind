#!/usr/bin/env sh

set -o errexit
set -o nounset

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
