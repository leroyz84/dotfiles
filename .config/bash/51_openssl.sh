
# request certificate from https endpoint and show info
function certinfo() {

  if [[ "$1" == *":"* ]]; then
    _port=$( echo $1 | cut -f2 -d':')
  else
    _port=443
  fi

  echo "# $1 @ ${_port}"
  openssl s_client -connect $1:$_port </dev/null 2>/dev/null| openssl x509 -noout -subject -dates -issuer
  echo "------- Chain info -------"
  openssl s_client -connect $1:$_port < /dev/null 2>/dev/null | grep  -e '[si]:'
  echo "--------------------------"
}

function getcert() {

  if [[ "$1" == *":"* ]]; then
    _port=$( echo $1 | cut -f2 -d':')
  else
    _port=443
  fi

  echo "# $1"
  openssl s_client -connect $1:$_port  2>/dev/null </dev/null |  sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p'

}

# get certificate info from clibpboard
function certparse() {
   getc | openssl x509 -noout -subject -dates -issuer
}


# make watch binary to understand this
export -f certparse
export -f certinfo

