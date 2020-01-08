#!/usr/bin/env bash
# if required, create a build folder and set build params in heimdall.json as so. This is a sample build.sh file
# {
#  "devops-python-boilerplate" : {
#    "build_vars" : {
#      "target": "build"
#    },
#    "build_cmd": "bash build.sh"
#  }
#}

rm -rf build/
mkdir -p build

echo "hello world"

cp server.py build/server.py
