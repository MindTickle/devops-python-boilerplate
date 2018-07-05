#!/usr/bin/env bash

# Initialising your app, fetch desired env variables

set -ex

cd /src/app
python server.py

set +ex
