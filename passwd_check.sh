#!/bin/bash
awk -F: '
NR==FNR {
    if ($3 >= 1000 && $1 != "nobody") valid_users[$1] = 1
    next
}
($1 in valid_users) {
    if ($2 == "" || $2 ~ /^[!*]/)
        print $1 ": No passwd (" $2 ")"
    else
        print $1 ": passwd is present"
}' /etc/passwd /etc/shadow
