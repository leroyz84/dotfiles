#!/bin/sh

LINES=50

case "$1" in
    *.pdf) pdftotext "$1" - ;;
    *.tar|*.tar.gz|*.tgz) echo "Tar contents:" ; tar tf "$1"  ;;
    *.pem|*.crt) openssl x509 -in "$1" -noout -subject -issuer -dates  ;;
    *) cat -n "$1" ;;
esac
