#!/bin/sh

# Prepare
if [ -d './build' ]; then
    rm -Rf ./build
fi
mkdir build

# sslyze: https://github.com/nabla-c0d3/sslyze
docker rmi nabla-c0d3/sslyze
git clone git@github.com:nabla-c0d3/sslyze.git build/sslyze
rm -Rf build/sslyze/.git
docker build --rm -f Dockerfile/sslyze -t nabla-c0d3/sslyze ./build/sslyze

# arachne (mac): http://www.arachni-scanner.com/
wget https://github.com/Arachni/arachni/releases/download/v1.5.1/arachni-1.5.1-0.5.12-darwin-x86_64.tar.gz -O build/arachni.tar.gz
cd build && tar -xzf arachni.tar.gz && rm -f arachni.tar.gz && cd ../

# sqlmap: http://sqlmap.org/
docker pull paoloo/sqlmap

# testssl.sh: https://github.com/drwetter/testssl.sh
docker pull drwetter/testssl.sh
