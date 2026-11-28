#!/bin/bash
admz=()
#to use this use "pparker" "tstark format
for user in "${admz[@]}"; do
    if id -nG "$user" 2>/dev/null | grep -qwE "sudo|adm"; then
        echo "$user is an admin"
    else
        echo "$user is not an admin"
    fi
done
