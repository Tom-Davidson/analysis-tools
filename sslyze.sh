#!/bin/bash

mkdir -p reports
rm -f reports/*
for domain in `cat domains.txt`; do
    if [ $domain != "" ]; then
        echo ${domain}
        docker run --rm -it nabla-c0d3/sslyze --regular ${domain}:443 > ./reports/sslyze-${domain}.txt
    fi
done

echo ""
echo ""
echo ""
echo "Interesting features:"
echo ""
echo "Non Comodo Certs:"
grep "Issuer:" reports/sslyze-*.txt | grep -v "COMODO RSA Extended Validation Secure Server CA" | grep -v "COMODO RSA Organization Validation Secure Server CA"
echo ""
echo "Vulnerabilities:"
grep "VULNERABLE" reports/sslyze-*.txt
echo ""
echo "Warnings"
grep "WARNING" reports/sslyze-*.txt
