
# request certificate from https endpoint and show info
function certinfo() {
   echo "# $1"
   openssl s_client -connect $1:443 </dev/null 2>/dev/null| openssl x509 -noout -subject -dates -issuer
}

# get certificate info from clibpboard
function certparse() {
   getc | openssl x509 -noout -subject -dates -issuer
}
