#!/bin/sh

LINES=50

# pacman -S pdftotext unrar p7zip transmission-cli bat chafa
    #*.pem|*.crt) openssl x509 -in "$1" -noout -subject -issuer -dates -ext subjectAltName ;;

case "$1" in
    *.pdf) pdftotext "$1" - ;;
    *.tar|*.tar.gz|*.tgz) echo "Tar contents:" ; tar tf "$1"  ;;
    *.rar) unrar l "$1";;
    *.7z) 7z l "$1";;
    *.zip|*.jar|*.war|*.ear|*.oxt) unzip -l "$1";;
    *.pem|*.crt) openssl x509 --passin pass:bla -in "$1" -noout -subject -issuer -dates -ext subjectAltName,nsCertType ;;
    *.torrent) transmission-show "$1";;
    *.sql) bat --color always  -n "$1" ;;
    *.png|*.jpg|*.jpeg) chafa "$1" ;;
    *.iso) iso-info --no-header -l "$1";;
    *.yaml|*.yml) bat --color always  -n "$1" ;;
    *.conf) bat --color always  -n "$1" ;;
    *) cat -n "$1" ;;
esac

