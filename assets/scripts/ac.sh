#!/bin/bash
clear

read -p "machine name: " curl

echo \"${curl}ac\": >> curlac.txt
echo "  label: <a target=\"_blank\" class=\"newicon\" href=\"https://armctf.com/#%22$curl%22\"><img src=\"assets/arm.png\"></a>" >> curlac.txt