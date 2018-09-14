#!/bin/sh

# Prepare
if [ -d './build' ]; then
    rm -Rf ./build
fi
mkdir build

# sslyze
docker rmi nabla-c0d3/sslyze
git clone git@github.com:nabla-c0d3/sslyze.git build/sslyze
docker build -f Dockerfile/sslyze -t nabla-c0d3/sslyze ./build/sslyze
