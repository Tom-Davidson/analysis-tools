# Static analysis tools

Build a set of docker images for analysis tools so they can be easily run.

## sslyze

`docker run --rm -it nabla-c0d3/sslyze --regular www.github.com:443 > sslyze.txt`

## sqlmap

`docker run --rm -it -v /tmp/sqlmap:/root/.sqlmap/ paoloo/sqlmap --url www.example.com/?id=1`
and the report will be found at /tmp/sqlmap

## testssl.sh

testssl.sh will tell you the ssl cyphers that the webserver supports (and whether it should) plus any security-related headers that the app responds with.
`docker run --rm -t drwetter/testssl.sh --headers --protocols www.example.com` or `docker run --rm -t drwetter/testssl.sh --help` for the available options

## TODO

- build should version docker containers
