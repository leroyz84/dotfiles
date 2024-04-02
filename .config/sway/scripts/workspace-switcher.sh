#/bin/bash

## This script reads open workspace names

swaymsg -t get_tree | \
    jq -r '.nodes | .[] | .nodes  | .[] | select(.name != null) | "\(.name?)"' | \
    grep -v __i3_scratch | \
         wofi -d -p "Select workspace" -H 400 -W 800 -d -i | {
           read -r id
           echo $id
           swaymsg workspace "$id"
           #swaymsg "[con_id=$id]" focus
       }
exit

## old code
       swaymsg -t get_tree |
         jq -r '.nodes[].nodes[] |  if  .nodes  then  [recurse(.nodes[])]
       else [] end + .floating_nodes | .[] | select(.nodes==[]) | ((.id |
       tostring) + " " + .name)' |
         wofi -d -p "Switch to:" -H 400 -W 800 -d -i --lines | {
           read -r id name
           swaymsg "[con_id=$id]" focus
       }
