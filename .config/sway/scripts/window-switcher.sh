#/bin/bash
       swaymsg -t get_tree |
         jq -r '.nodes[].nodes[] |  if  .nodes  then  [recurse(.nodes[])]
       else [] end + .floating_nodes | .[] | select(.nodes==[]) | ((.id |
       tostring) + "   " + .name)' | grep -v 'scratch' |
         wofi -d -p "Switch to:" -H 400 -W 800 -d -i | {
           read -r id name
           swaymsg "[con_id=$id]" focus
       }
