#!/bin/bash

IP="$1"
API="http://ip-api.com/json/$IP?fields=189241"

greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"


if [ -z "$1" ]; then
    clear
    echo -e "$redColour[!]No se ha proporcionado ninguna IP!$endColour"
    exit 777
fi

if [ "$1" == "--help" ] || [ "$1" == '-h' ]; then
  echo -e "\nUso del comando: \n./simple_bash_scrapper.sh [IP]\n"
  exit 888
fi

which jq  > /dev/null

if [ $(echo $?) != 0 ]; then
    echo "[+] Instalando jq..."
    sudo apt install jq -y
    clear
fi

response=$(curl -s $API)
status=$(echo "$response" | jq -r .status)
country=$(echo "$response" | jq -r .country)
city=$(echo "$response" | jq -r .city)
zip=$(echo "$response" | jq -r .zip)
isp=$(echo "$response" | jq -r .isp)
vpn=$(echo "$response" | jq -r .proxy)


if [ "$status" != 'success' ]; then
    clear
    echo -e "$redColour[!] IP inactiva o errónea!$endColour"
    exit 999
fi

clear
echo -e "$greenColour ---------------------"
echo -e "$endColour IP: $blueColour $IP"
echo -e "$endColour Pais: $purpleColour $country"
echo -e "$endColour Ciudad: $purpleColour $city"
echo -e "$endColour Codigo Postal: $purpleColour $zip "
echo -e "$endColour ISP: $purpleColour $isp"
echo -e "$endColour VPN/Proxy: $purpleColour $vpn"
echo -e "$greenColour ---------------------"


