
# Dutch Weather
function weer() {

    if [ -z $1 ]; then
      curl -s -H "Accept-Language: nl" --connect-timeout 3 -m 5 http://wttr.in/harfsen?1F |  tail -10
    else
      curl -s -H "Accept-Language: nl" --connect-timeout 3 -m 5 http://wttr.in/$1?1F |  tail -10
    fi

}

