#!/bin/bash

while IFS= read -r line; do
    vm=$(echo $line | cut -d '/' -f3 | sed 's/.md//g');
    echo $vm;
    read -p "link: " link < /dev/tty;
    read -p "mirror: " mirror < /dev/tty;
    read -p "nick: " nn < /dev/tty;
    echo "${vm}wu:" >> walzzz.txt;
    echo "  label: <span class=\"wuspan\">writeup by:<br>$nn<br><a class=\"wulink\" target=\"_blank\" href=\"$link\">original</a><a class=\"wulink\" target=\"_blank\" href=\"$mirror\">mirror</a></span>" >> walzzz.txt;
    echo "";
done < <(grep -lri 'vulnhub' vvmlist.github.io/_vvmlist/ | sort -u)