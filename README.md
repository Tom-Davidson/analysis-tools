# Static analysis tools
Build a set of docker images for analysis tools so they can be easily run.

## sslyze
`docker run --rm -it nabla-c0d3/sslyze --regular www.github.com:443 > sslyze.txt`

## sqlmap
`docker run --rm -it -v /tmp/sqlmap:/root/.sqlmap/ paoloo/sqlmap --url www.example.com/?id=1`
and the report will be found at /tmp/sqlmap

## TODO
 - build should version docker containers
