#!/bin/bash

IP="$1"
API="http://ip-api.com/json/$IP?fields=189241"

if [ -z "$1" ]; then
    echo -e "\033[31m[!]No se ha proporcionado ninguna IP!"
fi
