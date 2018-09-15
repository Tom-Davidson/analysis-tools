#!/bin/sh

# Prepare
if [ -d './build' ]; then
    rm -Rf ./build
fi
mkdir build

# sslyze
docker rmi nabla-c0d3/sslyze
git clone git@github.com:nabla-c0d3/sslyze.git build/sslyze
docker build --rm -f Dockerfile/sslyze -t nabla-c0d3/sslyze ./build/sslyze

# arachne (mac)
wget https://github.com/Arachni/arachni/releases/download/v1.5.1/arachni-1.5.1-0.5.12-darwin-x86_64.tar.gz -O build/arachni.tar.gz
cd build && tar -xzf arachni.tar.gz && rm -f arachni.tar.gz && cd ../
